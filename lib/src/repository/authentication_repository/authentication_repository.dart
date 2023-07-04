import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:hire_dorm/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:hire_dorm/src/features/main_pages/college_selection_screen.dart';
import 'package:hire_dorm/src/features/main_pages/dashboard_screen.dart';
import 'package:hire_dorm/src/repository/authentication_repository/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const OnBoardingScreen()) : Get.offAll(() => const DashboardScreen());
  }


  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
        verificationCompleted: (credentials) async {
        await _auth.signInWithCredential(credentials);
        },
        codeSent: (verificationId, resendToken){
        this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId){
        this.verificationId.value = verificationId;
        },
        verificationFailed: (e){
        if(e.code == 'invalid-phone-number'){
          Get.snackbar('Error', 'The provided phone number is not valid.');
        }
        else{
          Get.snackbar('Error', 'Something went wrong. Try again.');
        }
        },
    );

  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null? Get.offAll(()=> const CollegeSelectionScreen()): Get.to(()=>OnBoardingScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
    }
  }
  
  
  Future<bool> verifyOTP(String otp) async{
    var credentials = await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: this.verificationId.value, smsCode: otp));
    return credentials.user != null? true : false;

  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try{
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    firebaseUser.value!=null? Get.offAll(()=> const DashboardScreen()) : Get.to(()=> OnBoardingScreen());
    } on FirebaseAuthException catch(e){

    } catch (_){}
  }

  Future<void> logout() async => await _auth.signOut();


}
