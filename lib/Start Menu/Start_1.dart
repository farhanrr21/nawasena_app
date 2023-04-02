import 'package:flutter/material.dart';
import 'Start_2.dart';

class StartOne extends StatefulWidget {
  const StartOne({super.key});

  @override
  State<StartOne> createState() => _StartOneState();
}

class _StartOneState extends State<StartOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF1A1A1A),
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 72),
              child: Image.asset('images/start_1.png',scale: 3.5,),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                'Everything you need at\n your fingertips',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              width: 280,
              margin: const EdgeInsets.only(top: 18),
              child: const Text(
                'Intership recommendation, search,  career path, your profile and saved internship only a touch way',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
