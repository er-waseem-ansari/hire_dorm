
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
    this.id,
    required this.email,
    required this.password,
    required this.fullName,
    required this.phoneNo,
});

  toJson(){
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password,
    };
  }
  // Step 1     Map user fetched from Firebase to UserModel
  // factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
  //   return UserModel(email: email, password: password, fullName: fullName, phoneNo: phoneNo)
  // }

}