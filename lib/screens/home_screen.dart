// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
          image: "comfortJacket.jpg",
          name: "Comfort Jacket",
          price: 50.90,
          oldPrice: 50.90),
      Product(
          image: "eywaHoodie.jpg",
          name: "Eywa Hoodie",
          price: 50.90,
          oldPrice: 50.90),
      Product(
          image: "myrtleBeachSweater.jpg",
          name: "Myrtle Beach Sweater",
          price: 50.90,
          oldPrice: 50.90),
      Product(
          image: "peaceSkullShirt.jpg",
          name: "Peace Skull shirt",
          price: 50.90,
          oldPrice: 50.90),
      Product(
          image: "womenBlueDenim.jpg",
          name: "Women Blue Denim",
          price: 50.90,
          oldPrice: 50.90),
    ];
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 400,
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              image: DecorationImage(
                image: AssetImage('assets/womenBlueDenim.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.only(top: 65, right: 20, left: 20),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 28,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "What are you looking for?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 170,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recommendations",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Women Blue Denim",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$30.00",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "\$36.00",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Show all",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: double.maxFinite,
            height: 200,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                  width: 125,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/" + products[index].image),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              products[index].name,
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$" + (products[index].price).toString(),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "\$" + (products[index].oldPrice).toString(),
                                  style: TextStyle(fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Show all",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(Icons.person_outline),
                SizedBox(
                  width: 10,
                ),
                Text("Women"),
                SizedBox(
                  width: 5,
                ),
                Text("(728 items)"),
                SizedBox(
                  width: 135,
                ),
                Icon(Icons.navigate_next),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(Icons.person_outline),
                SizedBox(
                  width: 10,
                ),
                Text("Men"),
                SizedBox(
                  width: 5,
                ),
                Text("(728 items)"),
                SizedBox(
                  width: 155,
                ),
                Icon(Icons.navigate_next),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Product {
  String image;
  String name;
  double price;
  double oldPrice;

  Product(
      {required this.image,
      required this.name,
      required this.price,
      required this.oldPrice});
}
