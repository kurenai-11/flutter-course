import 'package:flutter/material.dart';
import 'package:test_flutter_app/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<QuestionData> questionsData = const [
    QuestionData(
        category: QuestionCategory.math, questionContent: "What is 2+2?"),
    QuestionData(
        category: QuestionCategory.math, questionContent: "What is 5*10?"),
    QuestionData(
        category: QuestionCategory.math, questionContent: "What is 11*32?"),
    QuestionData(
        category: QuestionCategory.math,
        questionContent: "What is the factorial of 11?"),
    QuestionData(
        category: QuestionCategory.math,
        questionContent: "What is the limit of x^2 - 4?"),
    QuestionData(
        category: QuestionCategory.math,
        questionContent: "What is the shape of a circle?"),
    QuestionData(
        category: QuestionCategory.math,
        questionContent:
            "How many degrees does a triangle have total for every corner?"),
    QuestionData(
        category: QuestionCategory.science,
        questionContent: "How do you define a quantum singularity?"),
    QuestionData(
        category: QuestionCategory.science,
        questionContent:
            "What is the best angle to throw a ball for it to have the largest travel distance?"),
    QuestionData(
        category: QuestionCategory.history,
        questionContent: "What is the meaning of life?"),
  ];

  Iterable<Question> get questions =>
      questionsData.map((e) => Question(question: e));

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'quiz-poker',
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('quiz-poker'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(6),
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "I am too lazy to search for different images...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xfff0f0d8),
                      shadows: [
                        Shadow(
                          color: Color(0xffb11628),
                          blurRadius: 3,
                          offset: Offset(2, 1),
                        ),
                        Shadow(
                          color: Colors.amber,
                          blurRadius: 3,
                          offset: Offset(-1, -1),
                        )
                      ],
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ...questions
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Builder(
          builder: (ctx) => FloatingActionButton(
            onPressed: () => ScaffoldMessenger.of(ctx).showSnackBar(
              const SnackBar(
                content: Text('You clicked the mystery button!'),
              ),
            ),
            child: const Icon(Icons.question_mark_sharp),
          ),
        ),
      ),
    );
  }
}
