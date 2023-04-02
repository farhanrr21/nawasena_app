import 'package:flutter/material.dart';
import 'Start_1.dart';
import 'PageViewStart.dart';

class StartMenu extends StatefulWidget {
  @override
  State<StartMenu> createState() => _StartMenuState();
}

class _StartMenuState extends State<StartMenu> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Splashscreen3Widget - FRAME
    return Scaffold(
      body: Container(
        color: const Color(0xFF1A1A1A),
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/nawasena_logo.png',
                    scale: 2,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(21, 0, 0, 0),
                    child: const Text(
                      'Nawasena',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(14, 72, 0, 0),
              child: Image.asset('images/start_page1.png',scale: 3,),
            ),
            Container(
              margin: const EdgeInsets.only(top: 48),
              child: const Text(
                'WELCOME',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                'Take your career path further with\nNawasena by V374',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(bottom: 70),
                child: SizedBox(
                  height: 64,
                  width: 277,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PageViewStart()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4FCCA3),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(17)))),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
