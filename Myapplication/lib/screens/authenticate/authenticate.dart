import 'package:flutter/material.dart';
import 'package:myapplication/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  __AuthenticateState createState() => __AuthenticateState();
}

class __AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child : SignIn(),
    );
  }
}