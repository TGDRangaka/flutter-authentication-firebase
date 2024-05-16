import 'package:flutter/material.dart';
import 'package:hope/models/UserModel.dart';
import 'package:hope/screens/authentication/authenticate.dart';
import 'package:hope/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // catch user data
    final user = Provider.of<UserModel?>(context);
    print(user);

    if(user == null || user.uid == ""){
      return Authenticate();
    }else{
      return Home();
    }
    // return Home();
  }
}