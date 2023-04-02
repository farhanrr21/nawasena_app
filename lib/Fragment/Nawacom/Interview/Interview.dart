import 'package:flutter/material.dart';
import 'package:nawasena_app/Fragment/Nawacom/Interview/Interview2.dart';
import 'package:nawasena_app/Fragment/Nawacom/Interview/Interview3.dart';
import 'package:nawasena_app/Fragment/Nawacom/Interview/Interview4.dart';
import 'Interview1.dart';

class Interview extends StatefulWidget {
  const Interview({super.key});

  @override
  State<Interview> createState() => _InterviewState();
}

//Global variable
int currentPage = 0;
int currentButton = 0;
bool buttonChange = true;
final List PageState = [Interview1(), Interview2(), Interview3(), Interview4()];

class _InterviewState extends State<Interview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A3F47),
      appBar: AppBar(
        title: const Text(
          'INTERVIEW PRACTICE',
          style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        centerTitle: true,
        toolbarHeight: 80,
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
      body: Column(
        children: [
          Expanded(child: PageState[currentPage]),
          Container(
            height: 89,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                )
              ],
              color: Color(0xFF3A3F47),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  if (currentButton == 0) ...[
                    Expanded(
                      child: Container(
                        height: 56,
                        margin: EdgeInsets.only(right: 5),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF3A3F47),
                              side: const BorderSide(
                                  color: Color(0xFF4FCCA3), width: 2),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          child: const Text(
                            'Check Mic',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 56,
                        margin: EdgeInsets.only(left: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentPage = 1;
                              currentButton = 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4FCCA3),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          child: const Text(
                            'Answer Question',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ] else if (currentButton == 1) ...[
                    Expanded(
                      child: Container(
                        height: 56,
                        margin: EdgeInsets.only(left: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentPage = 2;
                              currentButton = 2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4FCCA3),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ] else if (currentButton == 2) ...[
                    Expanded(
                      child: Container(
                        height: 56,
                        margin: EdgeInsets.only(left: 5),
                        child: ElevatedButton(
                          onPressed: () {buttonChange ?
                            setState(() {
                              buttonChange = !buttonChange;
                              ElevatedButton.styleFrom();
                              Future.delayed(
                                Duration(seconds: 3),
                                () {
                                  setState(() {
                                    currentPage = 3;
                                    currentButton = 3;
                                    buttonChange = !buttonChange;
                                    ElevatedButton.styleFrom(enableFeedback: true);
                                  });
                                },
                              );
                            }): null;
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: buttonChange
                                  ? Color(0xFF4FCCA3)
                                  : Color.fromARGB(255, 86, 86, 86),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          child: const Text(
                            'Start Speaking',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ] else if (currentButton == 3) ...[
                    Expanded(
                      child: Container(
                        height: 56,
                        margin: EdgeInsets.only(right: 5),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              currentPage = 0;
                              currentButton = 0;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF3A3F47),
                              side: const BorderSide(
                                  color: Color(0xFF4FCCA3), width: 2),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          child: const Text(
                            'Try Again',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 56,
                        margin: EdgeInsets.only(left: 5),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF4FCCA3),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          child: const Text(
                            'Feedback',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ]
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
