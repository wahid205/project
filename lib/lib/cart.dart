// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int item = 0;
  int item2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 100, 120, 129),
      appBar: AppBar(
        elevation: 25,
        backgroundColor: Color.fromARGB(255, 100, 120, 129),
        // ignore: prefer_const_constructors
        title: Text(
          "Your Cart",
          softWrap: true,
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: "myfont",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 375,
              height: 150,
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset(
                    "assets/img/Bed.jpg",
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 20, 0, 0),
                          child: Text("Product name : Bed",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                          child: Text("EGP before/after :",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                          child: Text("Color:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 110,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (item == 0) {
                                      item = 0;
                                    } else {
                                      item--;
                                    }
                                  });
                                },
                                icon: Icon(Icons.exposure_minus_1)),
                            Text("$item",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueGrey,
                                    fontSize: 20)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    item++;
                                  });
                                },
                                icon: Icon(Icons.exposure_plus_1)),
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
              width: 375,
              height: 150,
              color: Colors.white,
              child: Row(
                children: [
                  Image.asset(
                    "assets/img/Bed.jpg",
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 20, 0, 0),
                          child: Text("Product name : Bed",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                          child: Text("EGP before/after :",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                          child: Text("Color:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 110,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (item2 == 0) {
                                      item2 = 0;
                                    } else {
                                      item2--;
                                    }
                                  });
                                },
                                icon: Icon(Icons.exposure_minus_1)),
                            Text(
                              "$item2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                  fontSize: 20),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    item2++;
                                  });
                                },
                                icon: Icon(Icons.exposure_plus_1)),
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
            Center(
                child: SliderButton(
              action: () {
                ///Do something here
              },
              label: Text(
                "Add from wishlist",
                style: TextStyle(
                    color: Color(0xff4a4a4a),
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              icon: Icon(
                Icons.slideshow_outlined,
                size: 40,
              ),
              width: 230,
              height: 70,
              radius: 10,
              highlightedColor: Colors.white,
              baseColor: Color.fromARGB(255, 59, 105, 146),
            )),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    blurRadius: 4,
                  ),
                ],
              ),
              child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.slideshow),
                      hintText: ("Enter your promo"),
                      border: InputBorder.none)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total amount",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  Text(
                    "200 EG",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Check out",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 50, 95, 116)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
