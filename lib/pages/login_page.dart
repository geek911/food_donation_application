import "package:flutter/material.dart";
import 'package:food_donation_application/commons/custom_buttons.dart';
import 'package:food_donation_application/pages/donor_page.dart';
import 'package:food_donation_application/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void _register(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
  }

  void _login(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => DashboardPage()));
  }

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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
              onPressed: () {
                _login(context);
              },
            ),
            const Text(
              "OR",
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              child: const Text("Register"),
              onPressed: () {
                _register(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
