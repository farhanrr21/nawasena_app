import 'package:flutter/material.dart';
import 'package:nawasena_app/Main Menu/MainMenu.dart';

class Salary extends StatefulWidget {
  const Salary({super.key});

  @override
  State<Salary> createState() => _SalaryState();
}

class _SalaryState extends State<Salary> {
  String dropvalue = 'USD';
  TextStyle dropText = const TextStyle(color: Color(0xFF30AE85));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3A3F47),
      appBar: AppBar(
        title: const Text(
          'SALARY',
          style: TextStyle(fontFamily: 'Bebas Neue', fontSize: 32),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            margin: const EdgeInsets.only(left: 16),
            child: const Icon(Icons.arrow_back_sharp,size: 30,),
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
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 28, bottom: 20),
            child: const Text(
              'How much monthly salary do\nyou expect to get?',
              style:
                  TextStyle(color: Colors.white, fontSize: 22, wordSpacing: 3),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 8, left: 48),
            child: const Text(
              'Minimal Salary',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 48,right: 48),
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                 
                  child: DropdownButton(
                    value: dropvalue,
                    underline: Container(
                      height: 1,  
                      color: Colors.white,
                    ),
                    items: [
                      DropdownMenuItem(
                        value: 'USD',
                        child: Text('USD',style: dropText),
                      ),
                      DropdownMenuItem(
                        value: 'EUR',
                        child: Text('EUR',style: dropText),
                      ),
                      DropdownMenuItem(
                        value: 'JPY',
                        child: Text('JPY',style: dropText),
                      ),
                      DropdownMenuItem(
                        value: 'IDR',
                        child: Text('IDR',style: dropText),
                      ),
                      DropdownMenuItem(
                        value: 'MYR',
                        child: Text('MYR',style: dropText),
                      ),
                    ],
                    onChanged:  (String? newValue) {
                      setState(() {
                        dropvalue = newValue!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 13,left: 6),
                    height: 18,
                    child: const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Input salary...',
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(152, 152, 152, 1),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      style: TextStyle(
                        color: Color(0xFF30AE85),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
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
              color: const Color(0xFF3A3F47),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MainApp(),), (route) => false);
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
