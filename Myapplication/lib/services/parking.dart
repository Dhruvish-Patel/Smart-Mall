import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapplication/services/myData.dart';
import 'package:firebase_database/firebase_database.dart';
// import 'firebase_database';

class Parking extends StatefulWidget {
  @override
  _ParkingState createState() => _ParkingState();
}

class _ParkingState extends State<Parking> {
  List<MyData> alldata = [];
  @override
  TextEditingController number = new TextEditingController();
  void initState() {
    DatabaseReference ref = FirebaseDatabase.instance.reference();
    ref.child('test').once().then(
      (DataSnapshot snap) {
        var keys = snap.value.keys;
        var data = snap.value;
        for (var key in keys) {
          MyData d = new MyData(data[key]['number'], data[key]['location']);
          alldata.add(d);
        }
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Log in to your Account'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: number,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Car Number',
            ),
          ),
          SizedBox(height: 40),
          RaisedButton(
            child: Text('Search'),
            onPressed: () {
              initState();
              //return UI(alldata[4].number,alldata[4].location);
              new Text(alldata[4].number.toString());
              new Text(alldata[4].location.toString());
            },
          )
        ],
      ),
    );
  }

  Widget UI(String number, String location) {
    return Container(
      child: Column(children: <Widget>[]),
    );
  }
}
