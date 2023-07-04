class SignUpWithEmailAndPasswordFailure{
  final String message;
  const SignUpWithEmailAndPasswordFailure([this.message = "An unknown error occured. "]);
  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'weak_password': return SignUpWithEmailAndPasswordFailure('Please Enter a Stronger Password.');
      case 'invalid-email': return SignUpWithEmailAndPasswordFailure('Email is not valid or badly formatted.');
      case 'email_already_in_use': return SignUpWithEmailAndPasswordFailure('An account already exists with the provided email.');
      case 'operation-not-allowed': return SignUpWithEmailAndPasswordFailure('Operatin is not allowed, please contact support.');
      case 'user-disabled': return SignUpWithEmailAndPasswordFailure('This user has been disabled, please contact support for help.');
      default: return const SignUpWithEmailAndPasswordFailure();
    }
  }

}