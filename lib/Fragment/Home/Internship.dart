import 'package:flutter/material.dart';
import 'Roadmap.dart';
import 'package:nawasena_app/Data App/internshipOffers.dart';
import 'package:nawasena_app/Data App/saved.dart';

class Internship extends StatefulWidget {
  final int indexOffer;
  Internship({required this.indexOffer});

  @override
  State<Internship> createState() => _InternshipState();
}

class _InternshipState extends State<Internship> {
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
          Container(
            height: 220,
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Stack(children: [
              Positioned(
                left: 16,
                top: 16,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
              Positioned(
                      top: 16,
                      left: 16,
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Image.asset(companyLogo[widget.indexOffer]),
                      ),
                    ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 96,
                  width: 60,
                ),
              ),
              Positioned(
                left: 16,
                top: 90,
                child: Text(
                  offers[widget.indexOffer],
                  style: const TextStyle(
                    fontSize: 26,
                    fontFamily: 'Code',
                    color: Color(0xFF4FCCA3),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 116,
                child: Text(
                  companies[widget.indexOffer],
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300),
                ),
              ),
              Positioned(
                left: 16,
                bottom: 58,
                child: Text(
                  companyAddress[widget.indexOffer],
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
              ),
              Positioned(
                left: 16,
                bottom: 12,
                child: Text(
                  uploadTime[widget.indexOffer],
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ]),
          ),

          //Description and Roadmap box
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 46,
                  decoration: const BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10))),
                  alignment: Alignment.center,
                  child: Text(
                    'Intern Description',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Roadmap(),
                    ));
                  },
                  child: Container(
                    height: 46,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Color(0xFFBCBCBC),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(10))),
                    child: Text(
                      'Roadmap',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: const BoxDecoration(
                color: Color(0xFFD9D9D9),
              ),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //Highlights
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      child: const Text(
                        'Highlights',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          border: Border(
                              bottom: BorderSide(color: Colors.black12))),
                      padding: const EdgeInsets.only(bottom: 10),
                      margin: const EdgeInsets.only(bottom: 14),
                      width: double.infinity,
                      child: Text(
                        highlight[widget.indexOffer],
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          height: 1.4,
                        ),
                      ),
                    ),
                    //Description
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        'Description',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          border:
                              Border(bottom: BorderSide(color: Colors.black))),
                      padding: const EdgeInsets.only(bottom: 16),
                      width: double.infinity,
                      child: const Text(
                        'As a Frontend Developer Intern, you will work closely with our experienced developers and designers to create visually appealing and user-friendly websites and applications. You will have the opportunity to apply your knowledge of HTML, CSS, and JavaScript to bring our design concepts to life and improve the user experience of our digital products\nResponsibilities:\nCollaborate with cross-functional teams to design, develop, and implement frontend solutions.\nWrite clean, efficient, and well-documented code using HTML, CSS, and JavaScript.\nEnsure the technical feasibility of UI/UX designs and optimize applications for maximum speed and scalability.\nTroubleshoot and debug issues, and provide timely and effective solutions.\nKeep up-to-date with emerging frontend technologies and industry trends.\nQualifications:\nStrong understanding of HTML, CSS, and JavaScript.\nFamiliarity with frontend frameworks such as React, Angular, or Vue.js is a plus.\nKnowledge of cross-browser compatibility and web performance optimization.\nAttention to detail and ability to create visually appealing and user-friendly interfaces.\nStrong problem-solving and analytical skills.\nAbility to work collaboratively in a team environment.\nCurrently pursuing or recently completed a degree in Computer Science, Web Development, or a related field.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontFamily: 'Poppins', height: 1.4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //Apply Button
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
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    child: IconButton(
                      icon: Icon(
                        iconChange[widget.indexOffer]
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_border_rounded,
                        color: Colors.white,
                      ),
                      iconSize: 36,
                      onPressed: () {
                        if (iconChange[widget.indexOffer]) {
                              setState(() {
                              iconChange[widget.indexOffer] = !iconChange[widget.indexOffer];
                              saveMark.remove(widget.indexOffer);
                              });
                            }
                            else {
                              setState(() {
                              saveMark.add(widget.indexOffer);
                              iconChange[widget.indexOffer] = !iconChange[widget.indexOffer];
                              });
                            }
                      },
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4FCCA3),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        child: const Text(
                          'Apply Now',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
