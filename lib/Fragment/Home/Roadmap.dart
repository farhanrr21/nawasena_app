import 'dart:math';

import 'package:flutter/material.dart';
import 'Internship.dart';

class Roadmap extends StatefulWidget {
  const Roadmap({super.key});

  @override
  State<Roadmap> createState() => _RoadmapState();
}

class _RoadmapState extends State<Roadmap> {
  final List<String> road = [
    'HTML',
    'CSS',
    'Javascript',
    'Version Control',
    'React',
  ];
  bool markDone = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1A1A1A),
        appBar: AppBar(
          title: const Text(
            'INTERSHIP OFFER',
            style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32),
          ),
          backgroundColor: const Color(0xFF1A1A1A),
          centerTitle: true,
          toolbarHeight: 80,
          actions: <Widget>[Container()],
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              child: const Icon(
                Icons.arrow_back_sharp,
                size: 30,
              ),
            ),
          ),
        ),
        endDrawer: Container(
          margin: const EdgeInsets.only(top: 90, bottom: 80, left: 130),
          decoration: const BoxDecoration(
              color: Color(0xFF262B32),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30))),
          child: Drawer(
            backgroundColor: const Color(0xFF262B32),
            shape: const ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Container(
              padding: EdgeInsets.only( top: 10),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    markDone = !markDone;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      color: markDone
                                          ? Color(0xFF30AE85)
                                          : Color(0xFF262B32),
                                      border: Border.all(
                                          color: Color(0xFF30AE85), width: 1.2),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4))),
                                  child: Row(children: [
                                    Image.asset(
                                      markDone
                                          ? 'images/checked.png'
                                          : 'images/Ellipse.png',
                                      scale: 3,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 6),
                                      child: Text(
                                        'Mark as done',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              Image.asset('images/cancel.png', scale: 2)
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, top: 10),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'HTML',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 6),
                            padding: EdgeInsets.only(left: 20, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Blog',
                                  style: TextStyle(
                                      color: Color(0xFFBCBCBC),
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                Text(
                                  'More',
                                  style: TextStyle(
                                      color: Color(0xFF4FCCA3),
                                      fontFamily: 'Poppins',
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 25, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '● W3schools: Learn HTML',
                                  style: TextStyle(
                                      color: Color(0xFF4FCCA3),
                                      fontFamily: 'Nunito',
                                      fontSize: 16),
                                ),
                                 Text(
                                  '● W3schools: HTML Basic',
                                  style: TextStyle(
                                      color: Color(0xFF4FCCA3),
                                      fontFamily: 'Nunito',
                                      fontSize: 16),
                                ),
                                 Text(
                                  '● W3schools: Structure',
                                  style: TextStyle(
                                      color: Color(0xFF4FCCA3),
                                      fontFamily: 'Nunito',
                                      fontSize: 16),
                                ),
                                 Text(
                                  '● W3schools: HTML Div',
                                  style: TextStyle(
                                      color: Color(0xFF4FCCA3),
                                      fontFamily: 'Nunito',
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF3A3F47),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 6),
                            padding: EdgeInsets.only(left: 20, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Video',
                                  style: TextStyle(
                                      color: Color(0xFFBCBCBC),
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                Text(
                                  'More',
                                  style: TextStyle(
                                      color: Color(0xFF4FCCA3),
                                      fontFamily: 'Poppins',
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 10, 25, 10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("images/VideoRoadmap1.png"),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.contain),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 10, 25, 10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("images/VideoRoadmap1.png"),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.contain),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            //Description and Roadmap box
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Internship(
                              indexOffer: 0,
                            ),
                          ));
                    },
                    child: Container(
                      height: 46,
                      decoration: const BoxDecoration(
                          color: Color(0xFFBCBCBC),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(10))),
                      alignment: Alignment.center,
                      child: const Text(
                        'Intern Description',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 46,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(10))),
                    child: const Text(
                      'Roadmap',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                ),
                width: double.infinity,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 44, bottom: 44),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 78,
                        width: 250,
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
                        decoration: BoxDecoration(
                            color: Color(0xFF262B32),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 65, 65, 65)
                                    .withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ]),
                        child: Text(
                          'Frontend Dev',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 24),
                        ),
                      ),
                      Container(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: road.length,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: 120,
                                  width: 1,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 0.3,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Scaffold.of(context).openEndDrawer();
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 80,
                                    margin: const EdgeInsets.fromLTRB(
                                        50, 0, 50, 10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF30AE85),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromARGB(255, 65, 65, 65)
                                                    .withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 4,
                                            offset: Offset(0,
                                                4), // changes position of shadow
                                          ),
                                        ]),
                                    child: Text(
                                      road[index],
                                      style: const TextStyle(
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
