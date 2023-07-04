import 'package:get/get.dart';
import 'package:hire_dorm/src/features/main_pages/dashboard_screen.dart';
import 'package:hire_dorm/src/repository/authentication_repository/authentication_repository.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified? Get.offAll(const DashboardScreen()): Get.back();
  }
}