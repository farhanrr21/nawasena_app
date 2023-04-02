import 'package:flutter/material.dart';
import 'package:nawasena_app/Data App/job.dart';
import 'package:nawasena_app/Start%20Menu/Salary.dart';

class Specializations extends StatefulWidget {
  const Specializations({Key? key}) : super(key: key);

  @override
  State<Specializations> createState() => _SpecializationsState();
}

class _SpecializationsState extends State<Specializations> {
  final List<bool> _selected = List.generate(accounting.length, (_) => false);
  final List<bool> _selected2 = List.generate(admin.length, (_) => false);
  final List<bool> _selected3 = List.generate(computer.length, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3A3F47),
      appBar: AppBar(
        title: const Text(
          'SPECIALIZATIONS',
          style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
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
              'What kind of jobs are you\nlooking for ? (Optional)',
              style:
                  TextStyle(color: Colors.white, fontSize: 22, wordSpacing: 3),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
                child: Column(
                  children: [
                    // bagian 1
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(30, 14, 14, 14),
                      height: 70,
                      width: double.infinity,
                      color: Color(0xFF262B32),
                      child: const Text(
                        "Accountant/Finance",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                    ),
                    for (int i = 0; i < accounting.length; i++)
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
                                accounting[i],
                                style: const TextStyle(
                                    fontSize: 16, fontFamily: 'Poppins'),
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
                                  children: const [Icon(Icons.check)],
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
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(30, 14, 14, 14),
                      margin: const EdgeInsets.only(top: 16),
                      color: Color(0xFF262B32),
                      height: 70,
                      width: double.infinity,
                      child: const Text(
                        "Admin/Human Resources",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                    ),
                    for (int i = 0; i < admin.length; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selected2[i] = !_selected2[i];
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
                                admin[i],
                                style: const TextStyle(
                                    fontSize: 16, fontFamily: 'Poppins'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: _selected2[i]
                                      ? const Color(0xFF30AE85)
                                      : const Color(0xFF3A3F47),
                                ),
                                child: ToggleButtons(
                                  children: const [Icon(Icons.check)],
                                  isSelected: [_selected2[i]],
                                  onPressed: (index) => setState(() {
                                    _selected2[i] = !_selected2[i];
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
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(30, 14, 14, 14),
                      margin: const EdgeInsets.only(top: 16),
                      color: Color(0xFF262B32),
                      height: 70,
                      width: double.infinity,
                      child: const Text(
                        "Computer",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.white),
                      ),
                    ),
                    for (int i = 0; i < computer.length; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selected3[i] = !_selected3[i];
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
                                computer[i],
                                style: const TextStyle(
                                    fontSize: 16, fontFamily: 'Poppins'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: _selected3[i]
                                      ? const Color(0xFF30AE85)
                                      : const Color(0xFF3A3F47),
                                ),
                                child: ToggleButtons(
                                  children: const [Icon(Icons.check)],
                                  isSelected: [_selected3[i]],
                                  onPressed: (index) => setState(() {
                                    _selected3[i] = !_selected3[i];
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Salary()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4FCCA3),
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
