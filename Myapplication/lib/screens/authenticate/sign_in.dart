
import 'package:flutter/material.dart';
import 'package:myapplication/screens/authenticate/loginpage.dart';
import 'package:myapplication/screens/home/home.dart';
import 'package:myapplication/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Smart Mall'),
      ),
      body: 
        Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          SizedBox(height:20),
          RaisedButton(
          child: Text('Sign In as Guest'),
          onPressed: () {
          //   dynamic result = await _auth.SignInAnon();
          //   if(result== null)
          //   {
          //     print('error');
          //   }
          //   else {
          //     print('Success23r');
          //     print(result);
          //     print(result.uid);
              

          //   }
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Home()),);
           },
        ),
        
          SizedBox(height:20),

        RaisedButton(
          child:Text('Log In'),
          onPressed: (){
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),);
          },
        )],
        )
        

      );
    
  }
}