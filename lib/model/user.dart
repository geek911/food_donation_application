import 'package:firebase_auth/firebase_auth.dart';
import 'dart:convert';

class CustomUser {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? password;

  CustomUser({this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.password});

  void fromJson(String jsonString) {

  }

  String toJson() {
    var data = jsonEncode(
        {
          "firstname": firstName,
          "lastname": lastName,
          "email": email,
          "phone_number": phoneNumber
        }
    );

    return data;
  }
}
