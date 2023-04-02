import 'package:flutter/material.dart';

class Interview3 extends StatefulWidget {
  const Interview3({super.key});

  @override
  State<Interview3> createState() => _Interview3State();
}

class _Interview3State extends State<Interview3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A3F47),
      appBar: AppBar(
        title: const Text(
          'Part 1 : Question 1 of 8',
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
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.fromLTRB(24, 30, 24, 16),
                    child: const Text(
                      "Listen to the question...",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        fontSize: 19,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Icon(
                        Icons.volume_up_rounded,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
