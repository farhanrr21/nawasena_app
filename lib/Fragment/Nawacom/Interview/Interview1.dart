import 'package:flutter/material.dart';
import 'Interview2.dart';
import 'Interview.dart';

class Interview1 extends StatefulWidget {
  const Interview1({super.key});

  @override
  State<Interview1> createState() => _Interview1State();
}

class _Interview1State extends State<Interview1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70),
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
              "Hi! I'm Sandi. Welcome to Speak & Improve! Do you want to check your microphone first, or answer a question?",
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
                Icons.mic,
                color: Colors.white,
                size: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}
