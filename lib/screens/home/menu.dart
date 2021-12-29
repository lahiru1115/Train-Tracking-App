import 'package:flutter/material.dart';
import 'package:kdu_gpsd_app_driver/screens/location/location.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 150, bottom: 10, right: 50, left: 50),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash-screen-cover.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white30,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return Location();
                    }));
                  },
                  child: Text(
                    "Location Sharing",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple[700],
                      fixedSize: const Size(332, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
