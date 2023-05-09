import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BLOG"),
          centerTitle: true,
          leading: const IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white70,
              ),
              onPressed: null,
              iconSize: 40,
              color: Colors.white70),
          backgroundColor: Color(0xff647881),
        ),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.jpeg"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                Center(
                  child: SingleChildScrollView(
                    child: Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 400.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff92abb0).withOpacity(0.5)),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Flexible(
                                        flex: 4,
                                        child: Container(
                                          width: 150.0,
                                          height: 200.0,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/garden.jpeg"),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 70),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Garden Furniture Trends 2021",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 30),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 70),
                                              child: Text(
                                                " Read More......",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              width: 400.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff92abb0).withOpacity(0.5)),
                              child: Stack(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 150.0,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/how.jpeg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 4,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 70),
                                            child: Column(
                                              children: const [
                                                Flexible(
                                                  child: Text(
                                                    "How to maintain your outdoor patio furniture?",
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  flex: 4,
                                                ),
                                                SizedBox(height: 20),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 70),
                                                  child: Text(
                                                    " Read More......",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              width: 400.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff92abb0).withOpacity(0.5)),
                              child: Stack(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 150.0,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/trends.jpeg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 4,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 50),
                                            child: Column(
                                              children: const [
                                                Flexible(
                                                  child: Text(
                                                    "2021 Color Trends to Take Your Home Decor to The Next level",
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  flex: 4,
                                                ),
                                                SizedBox(height: 20),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 70),
                                                  child: Text(
                                                    " Read More......",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              width: 400.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff92abb0).withOpacity(0.5)),
                              child: Stack(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 150.0,
                                            height: 200.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/garden.jpeg"),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 3,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 70),
                                            child: Column(
                                              children: const [
                                                Flexible(
                                                  child: Text(
                                                    "Garden Furniture Trends 2021",
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  flex: 4,
                                                ),
                                                SizedBox(height: 30),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 70),
                                                  child: Text(
                                                    " Read More......",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
