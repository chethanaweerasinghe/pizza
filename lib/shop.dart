// ignore_for_file: prefer_const_constructors
import 'package:cantin/config.dart';
import 'package:flutter/material.dart';
import 'itemdetail.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 4,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search...",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          fontFamily: 'varela'),
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.8,
              children: [
                _buildCard('Veggie pizza', 'LKR 1100.00', 'assests/6.jpg'),
                _buildCard('Crispy pizza', 'LKR 1800.00', 'assests/12.png'),
                _buildCard('Seafood pizza', 'LKR 1990.00', 'assests/13.png'),
                _buildCard('Veggie pizza', 'LKR 1100.00', 'assests/6.jpg'),
                _buildCard('Crispy pizza', 'LKR 1800.00', 'assests/12.png'),
                _buildCard('Seafood pizza', 'LKR 1990.00', 'assests/13.png'),
                _buildCard('Veggie pizza', 'LKR 1100.00', 'assests/6.jpg'),
                _buildCard('Seafood pizza', 'LKR 1990.00', 'assests/13.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    String name,
    String price,
    String imagePath,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ItemDetail(
              assetPath: imagePath,
              itemprice: price,
              itemname: name,
            ),
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: maincolor.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.contain),
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(
                price,
                style: TextStyle(
                  color: maincolor,
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'varela',
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black,
                  height: 2.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: maincolor,
                      size: 20.0,
                    ),
                    Text(
                      'ADD TO CART',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Varela',
                        color: maincolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
