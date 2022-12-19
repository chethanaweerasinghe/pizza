// ignore_for_file: prefer_const_constructors, dead_code, unused_element

import 'package:flutter/material.dart';

import 'config.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cart"),
        backgroundColor: maincolor,
      ),
      backgroundColor: Colors.white,

      /*  body: SizedBox(
         height: MediaQuery.of(context).size.height - 50,
         child: ListView(
           children: [
             Container(
               padding: const EdgeInsets.only(left: 10, right: 10),
              // width: MediaQuery.of(context).size.width - 30,
               height: MediaQuery.of(context).size.height - 50,
               child: GridView.builder(
                 
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 2,  
                  crossAxisSpacing: 4.0,  
                  mainAxisSpacing: 4.0  
              ), 
                 ),
                 
                   
                   
                 
                 
             ),
           ],
         ),
       ),
    */
    );

    Widget _buildCard(String name, String price) {
      return Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(
                  color: Colors.amber,
                  spreadRadius: 3.0,
                  blurRadius: 5.0,
                )
              ]),
        ),
      );
    }
  }
}
