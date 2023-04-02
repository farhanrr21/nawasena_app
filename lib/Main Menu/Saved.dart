import 'package:flutter/material.dart';
import 'package:nawasena_app/Fragment/Home/Internship.dart';
import 'package:nawasena_app/Data App/saved.dart';
import 'package:nawasena_app/Data App/internshipOffers.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1A1A1A),
        appBar: AppBar(
          title: const Text(
            'SAVED',
            style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32),
          ),
          backgroundColor: const Color(0xFF1A1A1A),
          automaticallyImplyLeading: false,
          centerTitle: true,
          toolbarHeight: 80,
        ),
        body: //Home Menu
            saveMark.length != 0
                ? Container(
                    alignment: Alignment.topCenter,
                    child: ListView.builder(
                      itemCount: saveMark.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Internship(
                                indexOffer: saveMark[index],
                              ),
                            ));
                          },
                          child: Container(
                            height: 260,
                            margin: const EdgeInsets.only(
                                left: 12, right: 12, bottom: 16),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Color(0xFFD9D9D9),
                            ),
                            child: Stack(
                              children: [
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
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    height: 96,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFBCBCBC),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 15,
                                  left: 16,
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    child: Image.asset(
                                        companyLogo[saveMark[index]]),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 14,
                                  child: IconButton(
                                    icon: Icon(iconChange[saveMark[index]]
                                        ? Icons.bookmark_rounded
                                        : Icons.bookmark_border_rounded),
                                    iconSize: 36,
                                    onPressed: () {
                                      setState(() {
                                        iconChange[saveMark[index]] =
                                            !iconChange[saveMark[index]];
                                        saveMark.remove(saveMark[index]);
                                      });
                                    },
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 85,
                                  child: Text(
                                    offers[saveMark[index]],
                                    style: const TextStyle(
                                        fontSize: 26,
                                        fontFamily: 'Code',
                                        color: Color(0xFF00926F)),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 115,
                                  child: Text(
                                    companies[saveMark[index]],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 136,
                                  child: Text(
                                    companyAddress[saveMark[index]],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Positioned(
                                  right: 16,
                                  top: 140,
                                  child: Text(
                                    uploadTime[saveMark[index]],
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        color: Colors.black45),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  right: 16,
                                  top: 174,
                                  child: Text(
                                    highlight[saveMark[index]],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(bottom: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: const Icon(Icons.bookmarks_outlined,
                              color: Colors.white54),
                        ),
                        const Text(
                          "Save your offer here!",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16,
                            fontFamily: 'Nunito'
                          ),
                        )
                      ],
                    ),
                  ));
  }
}
