import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/lib/pages/PaymentMethod%20copy.dart';
import 'package:flutter_application_1/lib/pages/ProfileInform.dart';
import 'package:flutter_application_1/lib/shared/getData_Firestore.dart';


import 'package:get_storage/get_storage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AbadyApp extends StatefulWidget {
  const AbadyApp({super.key});

  @override
  State<AbadyApp> createState() => _AbadyAppState();
}

class _AbadyAppState extends State<AbadyApp> {
  bool state = false;
  bool state1 = false;

  final credential = FirebaseAuth.instance.currentUser;
  CollectionReference users = FirebaseFirestore.instance.collection('Users');

  get blurRadius => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 100, 120, 129),
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          "profile",
          style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic),
        ),
        elevation: 4.5,
        backgroundColor: const Color.fromARGB(255, 100, 120, 129),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GetUserImage(
                    documentId: credential!.uid,
                    size: 50,
                  ),
                  Column(
                    children: [
                      GetFullname(
                          documentId: credential!.uid, colour: Colors.white),
                      Container(
                        child: TextButton.icon(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileInform()),
                            );
                          },
                          label: const Text(
                            "Account information",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          icon: Icon(Icons.arrow_forward_ios),
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              alignment: Alignment.center),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 270, 20),
              child: Text(
                "Account",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              color: Color.fromRGBO(54, 67, 73, 1),
              height: 198,
              width: 500,
              child: Column(
                children: [
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.location_pin),
                      label: const Text(
                        "Location",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(100, 100, 120, 129)),
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                        minimumSize: MaterialStateProperty.all(Size(360, 40)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.only(right: 260)),
                      ),
                    ),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.lock),
                      label: const Text(
                        "Change Password",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(100, 100, 120, 129)),
                        minimumSize: MaterialStateProperty.all(Size(360, 40)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.only(right: 190)),
                      ),
                    ),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.local_shipping),
                      label: const Text(
                        "Shipping",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(100, 100, 120, 129)),
                        minimumSize: MaterialStateProperty.all(Size(360, 40)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.only(right: 250)),
                      ),
                    ),
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentMethod()),
                        );
                      },
                      icon: const Icon(Icons.lock),
                      label: const Text(
                        "Payment",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(100, 100, 120, 129)),
                        minimumSize: MaterialStateProperty.all(Size(360, 40)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.only(right: 250)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 250, 20),
              child: Text(
                "Notification",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 13),
              color: Color.fromRGBO(54, 67, 73, 1),
              height: 100,
              width: 500,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 358,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    margin: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromARGB(150, 100, 120, 129),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.8,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 143),
                          child: Text(
                            "App Notification",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Switch(
                          value: state1,
                          onChanged: (bool s1) {
                            setState(() {
                              state1 = s1;
                              print(state1);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 358,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromARGB(150, 100, 120, 129),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        
                        Container(
                          height: 30,
                          margin: EdgeInsets.only(right: 130),
                          child: Text(
                            "Location Tracking",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          
                        ),
                        SizedBox(height: 10,),
                        Switch(
                          value: state,
                          onChanged: (bool s) {
                            setState(() {
                              state = s;
                              print(state);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
