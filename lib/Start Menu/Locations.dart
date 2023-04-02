// import 'package:flutter/material.dart';

// class Location extends StatefulWidget {
//   const Location({super.key});

//   @override
//   State<Location> createState() => _LocationState();
// }

// class _LocationState extends State<Location> {
//   List<bool> _selected = List.generate(1, (_) => false);

//   @override
//   Widget build(BuildContext context) {

//     List item = ['Australia','Arab Saudi','Bangladesh'];

//     return Scaffold(
//       backgroundColor: const Color(0xFF3A3F47),
//       appBar: AppBar(
//         title: const Text(
//           'LOCATIONS',
//           style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32),
//         ),
//         backgroundColor: const Color(0xFF1A1A1A),
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         toolbarHeight: 80,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             margin: EdgeInsets.only(top: 28),
//             child: const Text(
//               'Where would you like to work?\n(Select up to 3)',
//               style:
//                   TextStyle(color: Colors.white, fontSize: 22, wordSpacing: 3),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 for (String i in item)
//                 Container(
//                   margin: EdgeInsets.only(top: 16),
//                   padding: EdgeInsets.all(12),
//                   height: 56,
//                   width: 310,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(10),
//                       ),
//                       color: Color(0xFFD9D9D9)),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "$i",
//                         style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
//                       ),
//                       Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(10),
//                           ),
//                           color: Color(0xFF3A3F47),
//                         ),
//                         child: ToggleButtons(
//                           children: [Icon(Icons.check)],
//                           isSelected: _selected,
//                           onPressed: (index) => setState(() {
//                             _selected[index] = !_selected[index];
//                           }),
//                           color: Color(0xFF3A3F47),
//                           selectedColor: Colors.white,
//                           fillColor: Color(0xFF30AE85),
//                           renderBorder: false,
//                           borderRadius: BorderRadius.circular(10),

//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:nawasena_app/Data App/country.dart';
import 'Specializations.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  //Variable
  final List<bool> _selected = List.generate(item.length, (_) => false);
  //Button Contain

  //Location Condition to Continue
  bool canContinue() {
    int count = 0;
    for (int i = 0; i < _selected.length; i++) {
      if (_selected[i]) {
        count++;
        if (count >= 3) {
          return true;
        }
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3A3F47),
      appBar: AppBar(
        title: const Text(
          'LOCATIONS',
          style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 28, bottom: 20),
            child: const Text(
              'Where would you like to work?\n(Select up to 3)',
              style:
                  TextStyle(color: Colors.white, fontSize: 22, wordSpacing: 3),
            ),
          ),
          //Button choice
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  for (int i = 0; i < item.length; i++)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selected[i] = !_selected[i];
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 16),
                        padding: const EdgeInsets.all(12),
                        height: 56,
                        width: 340,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color(0xFFD9D9D9),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item[i],
                              style: const TextStyle(
                                  fontSize: 20, fontFamily: 'Poppins'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: _selected[i]
                                    ? const Color(0xFF30AE85)
                                    : const Color(0xFF3A3F47),
                              ),
                              child: ToggleButtons(
                                children:  [Icon(Icons.check)],
                                isSelected: [_selected[i]],
                                onPressed: (index) => setState(() {
                                  _selected[i] = !_selected[i];
                                }),
                                color: const Color(0xFF3A3F47),
                                selectedColor: Colors.white,
                                fillColor: const Color(0xFF30AE85),
                                renderBorder: false,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
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
              child: ElevatedButton(
                onPressed: () {
                  canContinue()
                      ? Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Specializations()))
                      : null;
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: canContinue()
                        ? const Color(0xFF4FCCA3)
                        : Color.fromRGBO(95, 95, 109, 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                      fontSize: 16,
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
