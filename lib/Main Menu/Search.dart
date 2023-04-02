import 'package:flutter/material.dart';
import 'package:nawasena_app/Data App/searchData.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Color(0xFFBCBCBC),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for title, keyword, or company...',
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                suffixIcon: Container(
                  height: 56,
                  decoration: const BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: const Icon(Icons.search_rounded),
                ),
              ),
            ),
          ),
          Container(
            height: 30,
            width: double.infinity,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: ListView.builder(
              itemCount: internshipSearchOption.length,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 6, right: 6),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4FCCA3),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    onPressed: () {},
                    child: Text(
                      internshipSearchOption[index],
                      style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: GridView.builder(
                addAutomaticKeepAlives: false,
                itemCount: internshipTopicOption.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Image.asset(searchIcon[index]),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xFFBDBDBD),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            internshipTopicOption[index],
                            style: const TextStyle(
                                fontFamily: 'Poppins', fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                padding: EdgeInsets.only(bottom: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
