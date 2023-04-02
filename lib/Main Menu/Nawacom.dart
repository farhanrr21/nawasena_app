import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nawasena_app/Data%20App/topics.dart';
import 'package:nawasena_app/Fragment/Nawacom/Aptitude/Aptitude.dart';
import 'package:nawasena_app/Fragment/Nawacom/Interview/Interview.dart';
import 'package:nawasena_app/Fragment/Nawacom/Community/Community.dart';

class Nawacom extends StatefulWidget {
  const Nawacom({super.key});

  @override
  State<Nawacom> createState() => _NawacomState();
}

class _NawacomState extends State<Nawacom> {
  final List items = [
    ['Career Advice', 'Career Roadmap'],
    ['Self Development', 'Leadership'],
    ['Salary Advice', 'Management'],
    ['Technology', 'Design'],
  ];

  final List Community = [
    ['images/Engineering.png', 'Engineering', '3k+ member'],
    ['images/Designer.png', 'Designer', '5k+ member'],
    ['images/Business.png', 'Business', '1.5k+ member'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(left: 16),
          child: CircleAvatar(backgroundImage: AssetImage('images/pasfoto_white.jpg')),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_rounded),
            ),
          ),
        ],
        title: const Text(
          'Hi, Rozzaq',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //TAB BAR
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Container(
                    height: 30,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: items.length,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 6, right: 6),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 57, 63, 71),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            onPressed: () {},
                            child: Text(
                              items[index][0],
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 546,
                    margin: EdgeInsets.only(top: 6, bottom: 10),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: ListView.builder(
                      itemCount: items.length,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 6, right: 6),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 57, 63, 71),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            onPressed: () {},
                            child: Text(
                              items[index][1],
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            //Video Slider
            Container(
              color: Color(0xFF262B32),
              child: CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: false,
                    height: 200,
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 1000),
                    viewportFraction: 0.8),
                items: [
                  Container(
                    margin: EdgeInsets.fromLTRB(8, 0, 10, 0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: AssetImage("images/video_learning1.png"),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.contain),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 19.4, top: 35),
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Color.fromARGB(221, 14, 14, 14),
                                  Color.fromRGBO(1, 1, 1, 0),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2))),
                        ),
                        const Positioned(
                            bottom: 30,
                            left: 14,
                            child: Text(
                              'How do i find a Business Idea?',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 16
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(8, 0, 10, 0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/video_learning2.png"),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.contain),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 19.4, top: 35),
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Color.fromARGB(221, 14, 14, 14),
                                  Color.fromRGBO(1, 1, 1, 0),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2))),
                        ),
                        const Positioned(
                            bottom: 30,
                            left: 14,
                            child: Text(
                              'How to become a Freelancer',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 16
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Community
            Container(
              padding: EdgeInsets.fromLTRB(16, 10, 24, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Community',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Explore',
                    style: TextStyle(
                      color: Color(0xFF4FCCA3),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 140,
                    margin: const EdgeInsets.only(left: 6, right: 6),
                    decoration: const BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                            child: Image.asset('images/Honey dots.png'),
                            height: 90),
                        Positioned(
                            top: 6,
                            child: Image.asset(
                              Community[index][0],
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fitHeight,
                              height: 96,
                            )),
                        Positioned(
                          bottom: 78,
                          left: 10,
                          right: 10,
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                              top: BorderSide(
                                  color: Color(0xFF4FCCA3), width: 0.5),
                            )),
                          ),
                        ),
                        Positioned(
                          bottom: 56,
                          left: 10,
                          child: Text(
                            Community[index][1],
                            style: const TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                        Positioned(
                          bottom: 40,
                          left: 10,
                          child: Text(
                            Community[index][2],
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                color: Colors.black38),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 10,
                          child: GestureDetector(
                            onTap: () {
                              if (onTopics!=null){
                                onTopics.clear();
                              }
                              onTopics.add(index);
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Forum(),
                              ));
                            },
                            child: Container(
                              child: Row(
                                children: const [
                                  Text(
                                    'Join Now',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: Color(0xFF30AE85),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    color: Color(0xFF30AE85),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),

            //Test & Practice
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 22),
              margin: const EdgeInsets.only(top: 16),
              decoration: const BoxDecoration(color: Color(0xFF262B32)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(bottom: 10),
                    child: const Text(
                      'Test & Practice',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Aptitude(),
                          ));
                        },
                        child: Container(
                          height: 190,
                          width: 170,
                          decoration: const BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: DecorationImage(
                                image: AssetImage('images/Aptitude test.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Color.fromARGB(221, 14, 14, 14),
                                    Color.fromRGBO(1, 1, 1, 0),
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Text(
                              'Aptitude Test',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Interview(),
                              ));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 18),
                          height: 190,
                          width: 170,
                          decoration: const BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: DecorationImage(
                                image: AssetImage('images/Interview test.png'),
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Color.fromARGB(221, 14, 14, 14),
                                    Color.fromRGBO(1, 1, 1, 0),
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Text(
                              'Interview Practice',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //More on NAWACOM
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'More on Nawacom',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    height: 110,
                    margin: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Color(0xFF3A3F47),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            height: 90,
                            width: 150,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 87, 87, 88),
                              image: DecorationImage(
                                  image:
                                      AssetImage('images/video_learning2.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          right: 130,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                            decoration: const BoxDecoration(
                              color: Color(0xFF262B32),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Text(
                              '7m 25s',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 55,
                          right: 10,
                          child: Container(
                            width: 180,
                            child: Text(
                              'How to Start your Business Idea',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
