import 'package:flutter/material.dart';

enum QuestionCategory {
  math,
  science,
  history;

  @override
  String toString() {
    final nameArray = name.split("");
    return "${nameArray[0].toUpperCase()}${nameArray.sublist(1).join()}";
  }
}

class Question extends StatelessWidget {
  final QuestionCategory category;
  final String questionContent;

  const Question({
    super.key,
    required this.category,
    required this.questionContent,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          category.toString(),
          style: const TextStyle(fontSize: 48),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          questionContent,
          style: const TextStyle(fontSize: 24),
        )
      ],
    );
  }
}
