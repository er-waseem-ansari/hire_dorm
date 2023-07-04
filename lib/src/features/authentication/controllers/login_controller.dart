import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hire_dorm/src/repository/authentication_repository/authentication_repository.dart';

class LogInController extends GetxController{
  static LogInController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  void loginUser(String email, String password){
    AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
  }


}