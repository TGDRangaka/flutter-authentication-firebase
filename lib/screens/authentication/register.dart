import 'package:flutter/material.dart';
import 'package:hope/constants/colors.dart';
import 'package:hope/constants/description.dart';
import 'package:hope/constants/styles.dart';
import 'package:hope/services/auth.dart';

class Register extends StatefulWidget {
  // function
  final Function toggle;
  const Register({super.key, required this.toggle});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Referece for the class
  final AuthServices _auth = AuthServices();

  // form key
  final _formKey = GlobalKey<FormState>();

  // Email & Password
  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        title: const Text(
          "Register",
          style: TextStyle(
            color: Colors.white, // Set text color to white
          ),
        ),
        backgroundColor: bgBlack,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: <Widget>[
              const Text(
                description,
                style: descriptionStyle,
              ),
              const SizedBox(height: 10,),
              Center(
                child: Image.asset(
                  'assets/images/user.png',
                  height: 150,
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Email
                      TextFormField(
                        style: const TextStyle(color: Colors.white,),
                        decoration: inputDecoration.copyWith(hintText: "email"),
                        validator: (val) =>
                            val?.isEmpty == true ? "Enter a valid email" : null,
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                      ),
                
                      const SizedBox(height: 10,),
                
                      // Password
                      TextFormField(
                        style: const TextStyle(color: Colors.white,),
                        decoration: inputDecoration.copyWith(hintText: "password"),
                        validator: (val) =>
                            val!.length < 6 ? "Enter a valid password" : null,
                        onChanged: (val) {
                          setState(() {
                            password = val;
                          });
                        },
                      ),
                      Text(error, style: TextStyle(color: Colors.red[400]),),
                      const SizedBox(
                        height: 10,
                      ),
                
                      // google
                      const Text(
                        "Login with social accounts",
                        style: TextStyle(color: textLight),
                      ),
                      GestureDetector(
                        onTap: () async {
                          dynamic result = await _auth.signInWithGoogle();
                          if(result == null){
                            setState(() {
                              error = "Something went wrong";
                            });
                          }else{
                            print("Login with google account succeeded!");
                          }
                        },
                        child: Center(
                          child: Image.asset(
                            'assets/images/google.png',
                            height: 30,
                          ),
                        ),
                      ),
                
                      // register
                      const SizedBox(
                        height: 10,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        const Text(
                          "Already registered?",
                          style: descriptionStyle,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          // Go to the register page
                          onTap: () {widget.toggle();},
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                                color: mainBlue, fontWeight: FontWeight.w700),
                          ),
                        )
                      ]),
                
                      // button
                      const SizedBox(
                        height: 20,
                      ),
                      getButton("REGISTER", () async {
                        dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                        if(result == null){
                          setState(() {
                            error = "Please enter a valid email and password!";
                          });
                        }else{
                          print("Register successfully");
                        }
                      }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}