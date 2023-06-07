import 'package:flutter/material.dart';
import 'package:test_flutter_app/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<QuestionData> questionsData = [
    const QuestionData(
        category: QuestionCategory.math, questionContent: "What is 2+2?"),
    const QuestionData(
        category: QuestionCategory.math, questionContent: "What is 5*10?"),
    const QuestionData(
        category: QuestionCategory.math, questionContent: "What is 11*32?"),
    const QuestionData(
        category: QuestionCategory.math,
        questionContent: "What is the factorial of 11?"),
    const QuestionData(
        category: QuestionCategory.math,
        questionContent: "What is the limit of x^2 - 4?"),
    const QuestionData(
        category: QuestionCategory.math,
        questionContent: "What is the shape of a circle?"),
    const QuestionData(
        category: QuestionCategory.math,
        questionContent:
            "How many degrees does a triangle have total for every corner?"),
    const QuestionData(
        category: QuestionCategory.science,
        questionContent: "How do you define a quantum singularity?"),
    const QuestionData(
        category: QuestionCategory.science,
        questionContent:
            "What is the best angle to throw a ball for it to have the largest travel distance?"),
    const QuestionData(
        category: QuestionCategory.history,
        questionContent: "What is the meaning of life?"),
  ];

  List<Question> get questions =>
      questionsData.map((q) => Question(question: q)).toList();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return MaterialApp(
      title: 'quiz-poker',
      darkTheme: ThemeData.dark().copyWith(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('quiz-poker'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(6),
            child: ListView.builder(
              scrollDirection: orientation == Orientation.landscape
                  ? Axis.horizontal
                  : Axis.vertical,
              itemCount: questions.length,
              itemBuilder: (ctx, idx) => questions[idx],
            ),
          ),
        ),
        floatingActionButton: Builder(
          builder: (ctx) => FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(ctx).showSnackBar(
                const SnackBar(
                  content: Text('Added a new question!'),
                ),
              );
              setState(() {
                questionsData.add(
                  const QuestionData(
                      category: QuestionCategory.science,
                      questionContent:
                          "What is the third planet of the solar system?"),
                );
              });
            },
            child: const Icon(Icons.question_mark_sharp),
          ),
        ),
      ),
    );
  }
}
