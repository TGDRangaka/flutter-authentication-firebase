import 'package:flutter/material.dart';
import 'package:hope/screens/authentication/login.dart';
import 'package:hope/screens/authentication/register.dart';

// class Authenticate extends StatelessWidget {
//   const Authenticate({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Register(),
//       // home: Sign_In(),
//     );
//   }
// }

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool signInPage = true;

  // toggle pages
  void togglePage(){
    setState(() {
      signInPage = !signInPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    return signInPage ? Sign_In(toggle: togglePage) : Register(toggle: togglePage);
  }
}