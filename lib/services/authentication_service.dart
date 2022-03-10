import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:food_donation_application/model/user.dart";

class AuthenticationService {





  void signIn(String email, String password){

  }

  void register(CustomUser newUser) {

    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "moses@gmail.com",
        password: "newaoosouuduud"
    ).then((value){
      print("done");
    });

  }

}