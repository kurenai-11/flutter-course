import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String category;
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
          category,
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
