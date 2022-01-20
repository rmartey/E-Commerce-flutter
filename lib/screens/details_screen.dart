// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedSizeIndex = -1;
  int selectedColorIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                image: AssetImage('assets/eywaHoodie.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 15, right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Eywa Hoodie",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "\$30.99",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "\$30.99",
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Colour",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Wrap(
                  children: List.generate(
                    4,
                    (index) => InkWell(
                      onTap: () {
                        setState(() {
                          selectedColorIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: (selectedColorIndex == index)
                                ? Colors.blue
                                : Colors.white,
                            width: 2,
                          ),
                        ),
                        child: FractionallySizedBox(
                          heightFactor: 0.7,
                          widthFactor: 0.7,
                          child: Container(
                            decoration: BoxDecoration(
                              color: (index == 0)
                                  ? Colors.white70
                                  : (index == 1)
                                      ? Colors.grey.shade300
                                      : (index == 2)
                                          ? Colors.black
                                          : Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Size",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: List.generate(
                    5,
                    (index) => InkWell(
                      onTap: () {
                        setState(() {
                          selectedSizeIndex = index;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        // margin: const EdgeInsets.only(right: 1),
                        width: (selectedSizeIndex == index) ? 30 : 70,
                        height: (selectedSizeIndex == index) ? 35 : 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: (selectedSizeIndex == index)
                              ? Colors.blue
                              : Colors.indigo[50],
                        ),
                        child: Text((index == 0)
                            ? "S"
                            : (index == 1)
                                ? "M"
                                : (index == 2)
                                    ? "L"
                                    : (index == 3)
                                        ? "XL"
                                        : "XXL"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 20),
                  width: double.maxFinite,
                  height: 45,
                  decoration: BoxDecoration(
                    // color: Colors.blueAccent,
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.blue.shade200, Colors.blue.shade700],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Add to card",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
