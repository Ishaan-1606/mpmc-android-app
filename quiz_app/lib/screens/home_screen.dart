//import the material package
// ignore_for_file: prefer_final_fields, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/question_model.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/option_card.dart';
import '../widgets/result_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> _questions = [
    Question(
      id: '1',
      title:
          '1)Which of the following instruction divides 32 bit number by a 16 bit number?',
      options: {
        'A) DIV BX': true,
        'B) DIV BL': false,
        'C) DIV DX:AX, BX': false,
        'D) None of the above': false
      },
    ),
    Question(
      id: '2',
      title:
          '2)When the 8051 is reset and the EA line is LOW, the  program counter points to the first program instruction in the:',
      options: {
        'A) internal code memory': true,
        'B) external code memory': false,
        'C) internal data memory': false,
        'D) external data memory': false
      },
    ),
    Question(
      id: '3',
      title: '3)DJNZ defines _____ the operand and it jumps to the system.',
      options: {
        'A) Increment': false,
        'B) Decrement': true,
        'C) Move': false,
        'D) Add': false
      },
    ),
    Question(
      id: '4',
      title:
          '4)Which instruction in the 8051 microcontroller is used to decrement the value of a register?',
      options: {
        'A) ADD A,B': false,
        'B) SUB A,B': false,
        'C) MOV A,B': false,
        'D) DEC A': true
      },
    ),
    Question(
      id: '5',
      title:
          '5)Which instruction in the 8051 microcontroller is used to jump to a specific memory location?',
      options: {
        'A) LJMP ADDR': true,
        'B) AJMP ADDR': false,
        'C) CALL ADDR': false,
        'D) JZ ADDR': false
      },
    )
  ];

  //create an index to loop through the _questions
  int index = 0;
  //creating a score variable
  int score = 0;
  //creating a boolean variable to check if the button is clicked or not
  bool isPressed = false;
  bool isAlreadySelected = false;
  //create a function to display the next question
  void nextQuestion() {
    if (index == _questions.length - 1) {
      //the block that concerns us
      showDialog(
          context: context,
          barrierDismissible:
              false, //disables function on clicking outside of box,
          builder: (ctx) => ResultBox(
                result: score,
                questionLength: _questions.length,
                onPressed: startOver,
              ));
    } else {
      if (isPressed) {
        setState(() {
          index++; //when the index changes to 1 rebuild the app.
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please choose an option for the question'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 10.0),
        ));
      }
    }
  }

  //create a function to toggle isPressed variable and subsequently changing the color of the thing
  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value) {
        score++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  //create a function to start over
  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //change the background color
      backgroundColor: background,
      appBar: AppBar(
          title: const Text('Quiz App'),
          backgroundColor: background,
          shadowColor: Colors.transparent,
          actions: [
            Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text('Score: $score',
                    style: const TextStyle(fontSize: 18.0))),
          ]),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            QuestionWidget(
              indexAction: index,
              question: _questions[index].title,
              totalQuestions: _questions.length,
            ),
            const Divider(color: neutral),
            const SizedBox(height: 25.0),
            for (int i = 0; i < _questions[index].options.length; i++)
              GestureDetector(
                onTap: () => checkAnswerAndUpdate(
                    _questions[index].options.values.toList()[i]),
                child: OptionCard(
                  option: _questions[index].options.keys.toList()[i],
                  //need to check if the answer attempted is correct or not

                  color: isPressed
                      ? _questions[index].options.values.toList()[i] == true
                          ? correct
                          : incorrect
                      : neutral,
                ),
                //the options are created and now we shall create the custom widgets for an option
              ),
          ],
        ),
      ),
      //use the floating action button
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(
          nextQuestion: nextQuestion, //the above function
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
//we now import this file to our main.dart file
