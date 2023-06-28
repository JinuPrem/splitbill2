import 'package:flutter/material.dart';
import 'package:splitbill2/splitter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: Container(
              height: 50,
              child: Center(
                  child: Text(
                "Split Amount >",
                style: TextStyle(fontSize: 25, color: Colors.white),
              )),
              decoration: BoxDecoration(
                color: Colors.green,
              )),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 100,
                  height: 590,
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 120.0),
                          child: Text(
                            'Drag and drop friends to the items they share',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0),
                            height: 50,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/plus.png'),
                                    radius: 50,
                                  ),
                                  CircleAvatar(
                                    child: Image.asset('images/women1.webp'),
                                    radius: 50,
                                  ),
                                  CircleAvatar(
                                    child: Image.asset('images/pngegg.png'),
                                    radius: 50,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/lady.jpeg'),
                                    // child: Image.asset('images/lady.jpeg',fit: BoxFit.cover),
                                    radius: 50,
                                  ),
                                  CircleAvatar(
                                    child: Image.asset('images/boy.png'),
                                    radius: 50,
                                  ),
                                  CircleAvatar(
                                    child: Image.asset('images/girl.jpeg'),
                                    radius: 50,
                                  ),
                                ])),
                        Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black)),
                            margin: const EdgeInsets.all(20),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'The Lust Burger',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            )),
                        Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black)),
                            margin: const EdgeInsets.all(20),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Garlic Fries',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            )),
                        Card(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black)),
                            margin: const EdgeInsets.all(20),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Spicy Chicken',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ))
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(45))),
                  )),
              Positioned(
                  height: 200,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Text(
                            'Split Bill',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          Text(
                            'Total Bill Amount',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            '\$ 40.5',
                            style: TextStyle(fontSize: 60, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(45))),
                  ))
            ],
          ),
        ));
  }
}
