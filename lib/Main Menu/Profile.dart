import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List Profil = [
    ['Manage Profile', Icons.person_search],
    ['Notification', Icons.notifications],
    ['Settings', Icons.settings]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      appBar: AppBar(
        title: const Text(
          'PROFILE',
          style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            padding: const EdgeInsets.only(left: 24, right: 24),
            decoration: const BoxDecoration(
              color: Color(0xFF262B32),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/pasfoto_white.jpg'),
                  radius: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text('Abdul Rozzaq',
                      style: TextStyle(color: Colors.white, fontSize: 26)),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  padding: EdgeInsets.only(left: 12, right: 12),
                  decoration: const BoxDecoration(
                      color: Color(0xFF3A3F47),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Icon(
                              Profil[index][1],
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Text(
                                Profil[index][0],
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
