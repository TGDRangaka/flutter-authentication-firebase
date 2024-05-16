import 'package:flutter/material.dart';
import 'package:hope/services/auth.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // create a object from AuthService
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Home"),
            actions: [
              // Logout Button
              ElevatedButton(
                onPressed: () async {
                  await _auth.signOut();
                },
                child: const Icon(Icons.logout),
              )
            ],
          ),
          body: GestureDetector(
            onTap: (){
              print("alert users");
            },
            child: Center(
              child: Image.asset(
                "assets/images/home.png",
                width: 200,
              ),
            ),
          )),
    );
  }
}
