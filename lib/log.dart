// ignore_for_file: prefer_const_constructors

import 'package:cantin/config.dart';
import 'package:flutter/material.dart';

import 'navigation.dart';
import 'singup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  Widget _text() {
    return Center(
      child: Text(
        'Sign In',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 40,
          color: maincolor,
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

  Widget _login() {
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
              "Sign in",
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

  Widget _singbtn() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "Dont't have an account ?  ",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
            child: Text(
              "Singup",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: maincolor,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) {
                  return Singup();
                },
              ));
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        SizedBox(
          height: 50,
        ),
        _text(),
        SizedBox(
          height: 10,
        ),
        _mainImage(),
        SizedBox(
          height: 20,
        ),
        _email(),
        SizedBox(
          height: 20,
        ),
        _password(),
        SizedBox(
          height: 30,
        ),
        _login(),
        SizedBox(
          height: 20,
        ),
        _singbtn(),
      ],
    )));
  }
}
