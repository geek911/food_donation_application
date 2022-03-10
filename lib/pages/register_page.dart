import "package:flutter/material.dart";
import 'package:food_donation_application/model/user.dart';
import 'package:food_donation_application/services/authentication_service.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  AuthenticationService _service = AuthenticationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
        child: ListView(
          children: [
            _buildField("Firstname"),
            _buildField("Lastname"),
            _buildField("Email"),
            _buildField("Phone Number"),
            _buildField("Password"),
            _buildField("Confirm Password"),
            ElevatedButton(
                onPressed: () async {
                  Navigator.pop(context);
                },
                child: const Text('Register'))
          ],
        ),
      ),
    );
  }

  Column _buildField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        Text(
          label,
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        const TextField(
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 16,
          ),
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ],
    );
  }
}
