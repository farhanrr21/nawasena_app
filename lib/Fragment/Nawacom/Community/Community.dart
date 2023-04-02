import 'package:flutter/material.dart';
import 'package:nawasena_app/Data App/topics.dart';

class Forum extends StatefulWidget {
  const Forum({super.key});

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      appBar: AppBar(
        title: const Text(
          'Community',
          style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        automaticallyImplyLeading: false,
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
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                height: 130,
                margin: const EdgeInsets.only(left: 12, right: 12, bottom: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Color(0xFFD9D9D9),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 16,
                      left: 16,
                      child: Text(
                        topics[onTopics[0]][index],
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            fontSize: 22),
                      ),
                    ),
                    Positioned(
                      top: 48,
                      left: 16,
                      right: 80,
                      child: Text(
                        'Learning',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            color: Colors.black54,
                            fontSize: 16),
                      ),
                    ),
                    Positioned(
                      top: 76,
                      left: 5,
                      right: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black26, width: 0.6)),
                      ),
                    ),
                    Positioned(
                      top: 14,
                      right: 14,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          size: 26,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 14,
                      left: 16,
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            borderRadius: BorderRadius.circular(4)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.favorite_border_rounded),
                            Text(
                              'Likes',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 14,
                      left: 106,
                      child: Container(
                        height: 30,
                        width: 110,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            borderRadius: BorderRadius.circular(4)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.comment_rounded),
                            Text(
                              'Comments',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
