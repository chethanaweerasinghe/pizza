// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'config.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Container(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 35.0,
            ),
            CircleAvatar(
              //radius: 70.0,
              backgroundColor: maincolor, //border color
              child: Padding(
                padding: const EdgeInsets.all(2.0),

                //backgroundImage: AssetImage('assests/3.jpg',),
                child: CircleAvatar(
                    //backgroundImage: AssetImage('assests/5.jpg',),

                    ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              child: Center(
                child: Text(
                  'chethana weerasinghe',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: maincolor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Container(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.mail,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Change Email",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: maincolor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.lock, color: Colors.grey, size: 25),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Change Password",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: maincolor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child:
                        Icon(Icons.phone_android, color: Colors.grey, size: 25),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Change Moblie Number",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: maincolor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.home,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign Out",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: maincolor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
