import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Log in to your Account'),
      ),
      body: 
      
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height:20),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email id',
            ),
            
          ),
          SizedBox(height:20),
            TextField(
            obscureText: true,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            ),
            )
        ],

        

      ),
    );
  }
}