// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'config.dart';
import 'navigation.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  Widget _mainImage() {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 30, left: 30),
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assests/10.jpg'),
        ),
      ),
    );
  }

  Widget _getstart() {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: SizedBox(
          width: 270,
          height: 50,
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) {
                  return Navi();
                },
              ));
            },
            color: maincolor,
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7),
              child: Text(
                "Get Start",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 130,
            ),
            _mainImage(),
            SizedBox(
              height: 100,
            ),
            _getstart(),
          ],
        ),
      ),
    );
  }
}
