import "package:flutter/material.dart";
import 'package:food_donation_application/commons/custom_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Email",
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 8,
            ),
            const TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Password",
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 8,
            ),
            const TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: const Text("Login"),
              onPressed: () {},
            ),
            const Text(
              "OR",
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              child: const Text("Register"),
              onPressed: () {},
            ),

          ],
        ),
      ),
    );
  }
}
