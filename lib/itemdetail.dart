// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, avoid_web_libraries_in_flutter, prefer_final_fields

import 'package:flutter/material.dart';
import 'cart.dart';
import 'config.dart';

class ItemDetail extends StatefulWidget {
  final assetPath, itemprice, itemname;
  ItemDetail({Key? key, this.assetPath, this.itemprice, this.itemname})
      : super(key: key);
// ignore: unused_field

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  int _itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: maincolor,
        ),

        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 35.0,
                color: maincolor,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) {
                    return CartPage();
                  },
                ));
              }),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Text(
              widget.itemname,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'varela',
                fontSize: 45.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Image.asset(
            widget.assetPath,
            height: 170.0,
            width: 150,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 25.0),
          Center(
            child: Text(
              widget.itemprice,
              style: TextStyle(
                  color: maincolor,
                  fontFamily: 'varela',
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                IconButton(
                  icon: Icon(
                    Icons.remove_circle_outline_outlined,
                    color: maincolor,
                  ),
                  onPressed: () => setState(
                      () => _itemCount != 1 ? --_itemCount : _itemCount),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  _itemCount.toString(),
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'Varela',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10.0),
                IconButton(
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    color: maincolor,
                  ),
                  onPressed: () => setState(() => _itemCount++),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since...",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => CartPage(
                      /*assetPath,
                itemprice,
                itemname,
                */

                      ))));
            },
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                        color: maincolor.withOpacity(0.4),
                        spreadRadius: 2.0,
                        blurRadius: 4.0),
                  ],
                  color: maincolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'ADD TO CART',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
