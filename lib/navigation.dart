// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:cantin/cart.dart';
import 'package:cantin/config.dart';
import 'package:cantin/shop.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'log.dart';

class Navi extends StatefulWidget {
  const Navi({Key? key}) : super(key: key);

  @override
  _NaviState createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  GlobalKey<CurvedNavigationBarState> NavKey = GlobalKey();
  var pages = [ShopPage(), CartPage(), LoginPage()];
  var myindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[myindex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: maincolor,
        color: maincolor,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 40,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            size: 40,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            size: 40,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
      ),
    );
  }
}
