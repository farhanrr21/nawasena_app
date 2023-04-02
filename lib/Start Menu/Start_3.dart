import 'package:flutter/material.dart';
import 'package:nawasena_app/Start%20Menu/Locations.dart';

class StartThree extends StatefulWidget {
  const StartThree({super.key});

  @override
  State<StartThree> createState() => _StartThreeState();
}

class _StartThreeState extends State<StartThree> {
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
              child: Image.asset('images/start_page1.png',scale: 3,),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                'Learn, Connect, and Grow\n with Nawacom',
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
                'Access video learning, join communities, practice your interview skills, and achieve your dream career.',
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
