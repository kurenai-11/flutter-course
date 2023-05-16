import 'package:flutter/material.dart';

class QuestionData {
  final QuestionCategory category;
  final String questionContent;

  const QuestionData({required this.category, required this.questionContent});
}

enum QuestionCategory {
  math(
      imageSrc:
          "https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000"),
  science(
      imageSrc:
          "https://img.freepik.com/free-vector/colourful-science-work-concept_23-2148539571.jpg?w=2000"),
  history(
      imageSrc:
          "https://s7d2.scene7.com/is/image/Kennametal/History?\$MobileBanner\$&");

  const QuestionCategory({required this.imageSrc});

  final String imageSrc;

  @override
  String toString() {
    final nameArray = name.split("");
    return "${nameArray[0].toUpperCase()}${nameArray.sublist(1).join()}";
  }
}

class Question extends StatelessWidget {
  final QuestionData question;

  const Question({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          question.category.toString(),
          style: const TextStyle(fontSize: 48),
        ),
        const SizedBox(
          height: 12,
        ),
        Image.network(
          question.category.imageSrc,
          width: 200,
          height: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          question.questionContent,
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
