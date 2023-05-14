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
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(6),
              child: const Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Text(
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
                  SizedBox(
                    height: 12,
                  ),
                  Question(
                    category: 'Math',
                    questionContent: 'What is 2+2?',
                    imageSrc:
                        'https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000',
                  ),
                  Question(
                    category: 'Math',
                    questionContent: 'What is 5*10?',
                    imageSrc:
                        'https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000',
                  ),
                  Question(
                    category: 'Math',
                    questionContent: 'What is 11*32?',
                    imageSrc:
                        'https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000',
                  ),
                  Question(
                    category: 'Math',
                    questionContent: 'What is the factorial of 11?',
                    imageSrc:
                        'https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000',
                  ),
                  Question(
                    category: 'Math',
                    questionContent: 'What is the limit of x^2 - 4?',
                    imageSrc:
                        'https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000',
                  ),
                  Question(
                    category: 'Math',
                    questionContent: 'What is the shape of the cirlcle?',
                    imageSrc:
                        'https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000',
                  ),
                  Question(
                    category: 'Math',
                    questionContent:
                        'How many degrees does a triangle have total for every corner?',
                    imageSrc:
                        'https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000',
                  ),
                  Question(
                    category: 'Math',
                    questionContent: 'How do you define a quantum singularity?',
                    imageSrc:
                        'https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000',
                  ),
                  Question(
                    category: 'Math',
                    questionContent:
                        'What is the best angle to throw a ball for it to have the largest travel distance?',
                    imageSrc:
                        'https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000',
                  ),
                  Question(
                    category: 'Math',
                    questionContent: 'What is the meaning of life?',
                    imageSrc:
                        'https://img.freepik.com/free-vector/chalkboard-with-math-elements_1411-88.jpg?w=2000',
                  ),
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
