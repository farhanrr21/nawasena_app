import 'package:flutter/material.dart';

class Interview2 extends StatefulWidget {
  const Interview2({super.key});

  @override
  State<Interview2> createState() => _Interview2State();
}

class _Interview2State extends State<Interview2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A3F47),
      appBar: AppBar(
        title: const Text(
          'Part 1',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color(0xFF262B32),
        centerTitle: true,
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        elevation: 1,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.black38,
                    ),
                    child: Image.asset(
                      'images/Icons/chatbot.png',
                      color: Color(0xFFD9D9D9),
                      scale: 1.2,
                    ),
                  ),

                  //chatbot Text
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 30, 24, 16),
                    child: const Text(
                      "You will hear 8 questions. Listen to each question, then answer. For questions 1-4, you have 10 seconds to answer. For questions 5-8, you have 20 seconds to answer.",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        fontSize: 19,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
