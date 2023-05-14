import 'package:flutter/material.dart';
import 'package:test_flutter_app/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        body: const Center(
          child: Question(
            category: 'Math',
            questionContent: 'What is 2+2?',
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
