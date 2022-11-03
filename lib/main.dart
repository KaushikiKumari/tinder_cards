import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExampleHomePage(),
    );
  }
}

class ExampleHomePage extends StatefulWidget {
  @override
  _ExampleHomePageState createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHomePage> {
  @override
  Widget build(BuildContext context) {
    CardController controller;

    return new Scaffold(
      backgroundColor: Colors.blueAccent,
      body: new Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.6,
          child: new TinderSwapCard(
            swipeUp: false,
            swipeDown: false,
            orientation: AmassOrientation.TOP,
            allowVerticalMovement: false,
            totalNum: 8,
            stackNum: 3,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 1,
            minWidth: MediaQuery.of(context).size.width * 0.85,
            minHeight: MediaQuery.of(context).size.width * 0.9,
            cardBuilder: (context, index) => Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: TinderSwapCard(
                    orientation: AmassOrientation.TOP,
                    totalNum: 4,
                    stackNum: 4,
                    maxHeight: MediaQuery.of(context).size.height / 2.75,
                    maxWidth: MediaQuery.of(context).size.width / 1,
                    minHeight: MediaQuery.of(context).size.height / 3,
                    minWidth: MediaQuery.of(context).size.width / 1.155,
                    cardBuilder: (context, index) => Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Colors.white,
                        child: Column(children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          Row(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 5, left: 15, right: 0),
                              child: Text("UI Developer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15)),
                            ),
                          ]),
                          Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 0,
                                left: 15,
                              ),
                              child: Text(
                                "Aara Technology Pvt Ltd ,",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              children: [
                                Row(children: <Widget>[
                                  Icon(Icons.location_on_sharp),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Lucknow",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13)),
                                ]),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(children: <Widget>[
                                  Icon(Icons.shopping_bag_outlined),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("3-5 Years",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13)),
                                ]),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(children: <Widget>[
                                  Icon(Icons.brush),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("UI Developer,HTML,CSS,Angular",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13)),
                                ]),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 175, top: 8, bottom: 0, right: 0),
                            height: 35,
                            width: 100,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 3,
                              color: Colors.white60,
                              onPressed: () {
                                // Navigator.push(
                                // context, MaterialPageRoute(builder: (_) => ApplyNow()));
                              },
                              child: Text(
                                "Apply",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ])))),
            cardController: controller = CardController(),
            swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
              /// Get swiping card's alignment
              if (align.x < 0) {
                //Card is LEFT swiping
              } else if (align.x > 0) {
                //Card is RIGHT swiping
              }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientation, int index) {
              /// Get orientation & index of swiped card!
            },
          ),
        ),
      ),
    );
  }
}
