class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;

  Answer(this.answerText);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Test the quality of goods before making shipments",
    [
      Answer("Very Dislike"),
      Answer("Dislike"),
      Answer("Neutral"),
      Answer("Enjoy"),
      Answer("Very Enjoy")
    ],
  ));

  list.add(Question(
    "Provide career guidance to others",
    [
      Answer("Very Dislike"),
      Answer("Dislike"),
      Answer("Neutral"),
      Answer("Enjoy"),
      Answer("Very Enjoy")
    ],
  ));

  list.add(Question(
    "Doing volunteer work in a non-profit organization",
    [
      Answer("Very Dislike"),
      Answer("Dislike"),
      Answer("Neutral"),
      Answer("Enjoy"),
      Answer("Very Enjoy")
    ],
  ));

  list.add(Question(
    "Use a computer program to create customer invoices",
    [
      Answer("Very Dislike"),
      Answer("Dislike"),
      Answer("Neutral"),
      Answer("Enjoy"),
      Answer("Very Enjoy")
    ],
  ));

  list.add(Question(
    "Doing biological research",
    [
      Answer("Very Dislike"),
      Answer("Dislike"),
      Answer("Neutral"),
      Answer("Enjoy"),
      Answer("Very Enjoy")
    ],
  ));

  return list;
}
