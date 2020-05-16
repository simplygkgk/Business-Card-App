import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.teal[100],
                radius: 60,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 55.0,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/pp.jpg'),
                  ),
                ),
              ),
              Text(
                'Gaurav Kumar',
                style: TextStyle(
                  letterSpacing: -1.5,
                  fontFamily: 'Kalam',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'SKETCH ARTIST',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[100],
                ),
              ),
              Divider(
                color: Colors.white,
                indent: 100.0,
                endIndent: 100.0,
                thickness: 1.0,
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 25.0,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+91 8383990159',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.teal[500],
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: ListTileMoreCustomizable(
                  horizontalTitleGap: 1.0,
                  minLeadingWidth: 30.0,
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'kumargaurvgood@gmail.com',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.teal[500],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
