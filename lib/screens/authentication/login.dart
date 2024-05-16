import 'package:flutter/material.dart';
import 'package:hope/constants/colors.dart';
import 'package:hope/constants/description.dart';
import 'package:hope/constants/styles.dart';
import 'package:hope/services/auth.dart';

class Sign_In extends StatefulWidget {
  // function
  final Function toggle;
  const Sign_In({super.key, required this.toggle});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {

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
          "SIGN IN",
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
                        onTap: () {},
                        child: Center(
                          child: Image.asset(
                            'assets/images/google.png',
                            height: 30,
                          ),
                        ),
                      ),
                
                      // register
                      const SizedBox(
                        height: 20,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        const Text(
                          "Do not have an account?",
                          style: descriptionStyle,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          // Go to the register page
                          onTap: () {widget.toggle();},
                          child: const Text(
                            "REGISTER",
                            style: TextStyle(
                                color: mainBlue, fontWeight: FontWeight.w700),
                          ),
                        )
                      ]),
                
                      // button
                      const SizedBox(
                        height: 10,
                      ),
                      getButton("LOG IN", () async {
                        dynamic result = await _auth.signInUsingEmailAndPassword(email, password);
                        if(result == null){
                          setState(() {
                            error = "Could not sigin with those credentials";
                          });
                        }else{
                          print("Signed in successfully!");
                        }
                      }),
                
                      // Anonumous
                      const SizedBox(
                        height: 10,
                      ),
                      getButton("LOGIN AS GUEST", () async {
                        dynamic result = await _auth.signInAnonymously();
                        if(result == null){
                          setState(() {
                            error = "Error sing in as guest!";
                          });
                        }else{
                          print("Signed in successfully as guest!");
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

// ElevatedButton(
//         child: const Text("Sign in Anonymously"),
//         onPressed: () async {
//           dynamic result = _auth.signInAnonymously();
//           if(result == Null){
//             print("Error in sign in anonymously!");
//           }else{
//             print("Signed In anonymously!");
//           }
//         },
//       )

