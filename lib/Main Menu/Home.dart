import 'package:flutter/material.dart';
import 'package:nawasena_app/Data%20App/saved.dart';
import 'package:nawasena_app/Fragment/Home/Internship.dart';
import 'package:nawasena_app/Data App/internshipOffers.dart';
import 'package:nawasena_app/Data App/searchData.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body:
          //Home Menu
          Container(
        alignment: Alignment.topCenter,
        child: ListView.builder(
          itemCount: offers.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Internship(
                    indexOffer: index,
                  ),
                ));
              },
              child: Container(
                height: 260,
                margin: const EdgeInsets.only(left: 12, right: 12, bottom: 16),
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
                      top: 16,
                      left: 16,
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Image.asset(companyLogo[index]),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 14,
                      child: IconButton(
                        icon: Icon(iconChange[index]
                            ? Icons.bookmark_rounded
                            : Icons.bookmark_border_rounded),
                        iconSize: 36,
                        onPressed: () {
                            if (iconChange[index]) {
                              setState(() {
                              iconChange[index] = !iconChange[index];
                              saveMark.remove(index);
                              });
                            }
                            else {
                              setState(() {
                              saveMark.add(index);
                              iconChange[index] = !iconChange[index];
                              });
                            }
                        },
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 85,
                      child: Text(
                        offers[index],
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
                        companies[index],
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
                        companyAddress[index],
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
                        uploadTime[index],
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
                        highlight[index],
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
      ),
    );
  }
}
