// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'config.dart';
import 'navigation.dart';

class Singup extends StatefulWidget {
  const Singup({Key? key}) : super(key: key);

  @override
  _SingupState createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  var _passwordVisible = false;
  Widget _text() {
    return Center(
      child: Container(
        child: Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 40,
            color: maincolor,
          ),
        ),
      ),
    );
  }

  Widget _mainImage() {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 30, left: 30),
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assests/8.jpg'),
        ),
      ),
    );
  }

  Widget _firstname() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Username",
          labelStyle: TextStyle(color: maincolor, fontWeight: FontWeight.bold),
          prefixIcon: Icon(
            Icons.person,
            color: maincolor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: maincolor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: maincolor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }


  Widget _email() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Email",
          labelStyle: TextStyle(color: maincolor, fontWeight: FontWeight.bold),
          prefixIcon: Icon(
            Icons.mail,
            color: maincolor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: maincolor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: maincolor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget _password() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          labelText: "Password",
          labelStyle: TextStyle(color: maincolor, fontWeight: FontWeight.bold),
          prefixIcon: Icon(
            Icons.lock,
            color: maincolor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: maincolor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: maincolor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget _repassword() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          labelText: "Conferm Password",
          labelStyle: TextStyle(color: maincolor, fontWeight: FontWeight.bold),
          prefixIcon: Icon(
            Icons.lock,
            color: maincolor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: maincolor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: maincolor, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget _singup() {
    return Center(
      child: Container(
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
            elevation: 5,
            color: maincolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
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
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 50),
            _text(),
            _mainImage(),
            SizedBox(height: 20),
            _firstname(),
            //_lastname(),
            _email(),
            _password(),
            _repassword(),
            SizedBox(height: 30),
            _singup(),
          ],
        ),
      ),
    );
  }
}
