import 'package:flutter/material.dart';
import 'Start_3.dart';

class StartTwo extends StatefulWidget {
  const StartTwo({super.key});

  @override
  State<StartTwo> createState() => _StartTwoState();
}

class _StartTwoState extends State<StartTwo> {
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
              child: Image.asset('images/start_2.png',scale: 3.8,),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                'Explore your career path\nwith roadmap',
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
              width: 290,
              margin: const EdgeInsets.only(top: 18),
              child: const Text(
                'Explore your career roadmap easily and learn every single step',
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
