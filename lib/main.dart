import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_donation_application/pages/login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food Donation Application",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: LoginPage(),
    );
  }
}
