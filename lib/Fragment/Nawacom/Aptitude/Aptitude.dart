import 'package:flutter/material.dart';
import 'AptitudeModel.dart';
import 'package:nawasena_app/Main Menu/Nawacom.dart';

class Aptitude extends StatefulWidget {
  const Aptitude({super.key});

  @override
  State<Aptitude> createState() => _AptitudeState();
}

class _AptitudeState extends State<Aptitude> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      appBar: AppBar(
        title: const Text(
          'APTITUDE TEST',
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.white),
              )),
              child: Text(
                'Question ${currentQuestionIndex + 1}/${questionList.length.toString()}',
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Nunito',
                  fontSize: 36,
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: 16, bottom: 100, left: 16, right: 16),
              width: double.infinity,
              child: Text(
                questionList[currentQuestionIndex].questionText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: _answerList(),
            ),
            Expanded(child: Container()),
            _nextButton()
          ],
        ),
      ),
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 60,
      child: ElevatedButton(
        child: Text(
          answer.answerText,
          style: TextStyle(
              fontFamily: 'Nunito', fontWeight: FontWeight.w600, fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          backgroundColor: isSelected ? Color(0xFF4FCCA3) : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
            setState(() {
              selectedAnswer = answer;
            });
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
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
            if (isLastQuestion) {
              //display score
              showDialog(context: context, builder: (_) => _showScoreDialog());
            } else if(selectedAnswer!=null){
              //next question
              setState(() {
                selectedAnswer = null;
                currentQuestionIndex++;
              });
            }
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: selectedAnswer==null? Color.fromARGB(95, 164, 145, 145) :Color(0xFF4FCCA3),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
          child: Text(
            isLastQuestion ? "Submit" : "Next",
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }

    return AlertDialog(
      title: Text(
        'Good job on the fulfillment of the test!\nWe wil notify you soon for the result',
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600),
      ),
      content: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4FCCA3)
        ),
        child: const Text("Go Back"),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
