import 'package:flutter/material.dart';
import 'package:nawasena_app/Main%20Menu/MainMenu.dart';
import 'Locations.dart';
import 'Start_1.dart';
import 'Start_2.dart';
import 'Start_3.dart';

class PageViewStart extends StatefulWidget {
  const PageViewStart({super.key});

  @override
  State<PageViewStart> createState() => _PageViewStartState();
}

class _PageViewStartState extends State<PageViewStart> {
  //Pageview
  final PageController _pageController = PageController(initialPage: 0);
  int _activePage = 0;
  //Pageview list
  final List<Widget> _pages = [
    const StartOne(),
    const StartTwo(),
    const StartThree()
  ];
  //Button text
  String textButton = 'Next';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _activePage = page;
                });
              },
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              }),
          Positioned(
            bottom: 160,
            left: 0,
            right: 0,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _pages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      child: CircleAvatar(
                        backgroundColor:
                            _activePage == index ? Colors.white : Colors.grey,
                        radius: 5,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 70),
            child: SizedBox(
              height: 64,
              width: 277,
              child: ElevatedButton(
                onPressed: () {
                  if (_activePage == 0) {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  } else if (_activePage == 1) {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Location(),
                    ));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4FCCA3),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(17)))),
                child: Text(
                  _activePage > 1 ? "Let's Get Started" : "Next",
                  style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
