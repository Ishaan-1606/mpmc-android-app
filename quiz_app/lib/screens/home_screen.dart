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
      title: '8051 series has how many 16-bit registers?',
      options: {
        'a) 2': true,
        'b) 3': false,
        'c) 1': false,
        'd) 0': false,
      },
    ),
    Question(
      id: '2',
      title:
          'How many bytes of bit addressable memory is present in 8051 based microcontrollers?',
      options: {
        'a) 8 bytes': false,
        'b) 32 bytes': false,
        'c) 16 bytes': true,
        'd) 128 bytes': false,
      },
    ),
    Question(
      id: '3',
      title:
          '8051 can access up to ____ of program memory and ____ of external data',
      options: {
        'a) 64 KB, 32 KB': false,
        'b) 32 KB, 64 KB': false,
        'c) 64 KB, 64 KB': true,
        'd) 16 KB, 64 KB': false,
      },
    ),
    Question(
      id: '4',
      title: 'The function of ALE signal in 8051 microcontroller is',
      options: {
        'a) To extend the memory capacity': false,
        'b) To control demultiplexing the address and data bus.': true,
        'c) To distinguish between external RAM and PROM': false,
        'd) To initialize the parallel port': false,
      },
    ),
    Question(
      id: '5',
      title: 'Which of the following comes under the indexed addressing mode?',
      options: {
        'a) MOVX A,@DPTR': false,
        'b) MOV @R0,A': false,
        'c) MOV A,R0': false,
        'd) MOVC @A+DPTR,A': true,
      },
    ),
    Question(
      id: '6',
      title: '8051 has ........... no. of timers',
      options: {
        'a) 1': false,
        'b) 2': true,
        'c) 3': false,
        'd) 4': false,
      },
    ),
    Question(
      id: '7',
      title: '8051 has ______no of I/O pins',
      options: {
        'a) 2': false,
        'b) 4': true,
        'c) 8': false,
        'd) 6': false,
      },
    ),
    Question(
      id: '8',
      title: 'Vcc is pin no ............... in 8051',
      options: {
        'a) 15': false,
        'b) 20': false,
        'c) 25': false,
        'd) 40': true,
      },
    ),
    Question(
      id: '9',
      title: 'PSEN is pin no.................of 8051',
      options: {
        'a) 29': true,
        'b) 30': false,
        'c) 31': false,
        'd) 32': false,
      },
    ),
    Question(
      id: '9',
      title: 'PSEN is pin no.................of 8051',
      options: {
        'a) 29': true,
        'b) 30': false,
        'c) 31': false,
        'd) 32': false,
      },
    ),
    Question(
      id: '11',
      title: 'Which of the following instruction is not valid?',
      options: {
        'a) MOV AX, BX': false,
        'b) MOV DS, 5000H': true,
        'c) MOV AX, 5000H': false,
        'd) PUSH AX': false,
      },
    ),
    Question(
      id: '12',
      title: 'Which is incorrect?',
      options: {
        'a) MOV [1234h], [4567h]': true,
        'b) MOV [BX], AX': false,
        'c) MOV [1234h], 4567h': false,
        'd) MOV BX, [1234h]': false,
      },
    ),
    Question(
      id: '13',
      title:
          'Which of the following instruction divides a 32-bit number by a 16-bit number?',
      options: {
        'a) DIV BX': true,
        'b) DIV BL': false,
        'c) DIV DX:AX, BX': false,
        'd) None of the above': false,
      },
    ),
    Question(
      id: '14',
      title: 'MOV A, @ R1 will:',
      options: {
        'a) copy R1 to the accumulator': false,
        'b) copy the accumulator to R1': false,
        'c) copy the contents of memory whose address is in R1 to the accumulator':
            true,
        'd) copy the accumulator to the contents of memory whose address is in R1':
            false,
      },
    ),
    Question(
      id: '15',
      title:
          'When the 8051 is reset and the EA line is LOW, the program counter points to the first program instruction in the:',
      options: {
        'a) internal code memory': false,
        'b) external code memory': true,
        'c) internal data memory': false,
        'd) external data memory': false,
      },
    ),
    Question(
      id: '16',
      title: 'DJNZ defines _____ the operand and it jumps to the system.',
      options: {
        'a) Increment': false,
        'b) Decrement': true,
        'c) Move': false,
        'd) Add': false,
      },
    ),
    Question(
      id: '17',
      title:
          'Which of the following commands are used for addressing the off-chip data and associated codes respectively by data pointer?',
      options: {
        'a) MOVC & MOVY': false,
        'b) MOVY & MOVB': false,
        'c) MOVZ & MOVA': false,
        'd) MOVX & MOVC': true,
      },
    ),
    Question(
      id: '18',
      title:
          'Which instruction in the 8051 microcontroller is used to decrement the value of a register?',
      options: {
        'a) ADD A, B': false,
        'b) SUB A, B': false,
        'c) MOV A, B': false,
        'd) DEC A': true,
      },
    ),
    Question(
      id: '19',
      title:
          'Which instruction in the 8051 microcontroller is used to jump to a specific memory location?',
      options: {
        'a) LJMP addr': true,
        'b) AJMP addr': false,
        'c) CALL addr': false,
        'd) JZ addr': false,
      },
    ),
    Question(
      id: '20',
      title:
          'Which instruction in the 8051 microcontroller is used to call a subroutine?',
      options: {
        'a) LJMP addr': false,
        'b) AJMP addr': false,
        'c) CALL addr': true,
        'd) JZ addr': false,
      },
    ),
    Question(
      id: '21',
      title:
          'Which instruction in the 8051 microcontroller is used to return from a subroutine?',
      options: {
        'a) RET': true,
        'b) CALL addr': false,
        'c) JMP addr': false,
        'd) AJMP addr': false,
      },
    ),
    Question(
      id: '22',
      title:
          'What is the purpose of the PSW register in the 8051 microcontroller?',
      options: {
        'a) To store the program counter (PC)': false,
        'b) To store data': false,
        'c) To store the stack pointer (SP)': false,
        'd) To store the program status word (PSW)': true,
      },
    ),
    Question(
      id: '23',
      title:
          'The serial communication mode used by the 8051 microcontroller is ____.',
      options: {
        'a) Asynchronous': true,
        'b) Synchronous': false,
        'c) Half-duplex': false,
        'd) Full-duplex': false,
      },
    ),
    Question(
      id: '24',
      title:
          'The baud rate of the serial port can be configured using the ____ register.',
      options: {
        'a) SCON': false,
        'b) TMOD': false,
        'c) TH1': true,
        'd) PCON': false,
      },
    ),
    Question(
      id: '25',
      title:
          'The serial data is transmitted on the ____ pin, and the serial data is received on the ____ pin.',
      options: {
        'a) TXD, RXD': true,
        'b) RXD, TXD': false,
        'c) SCK, SDI': false,
        'd) MOSI, MISO': false,
      },
    ),
    Question(
      id: '26',
      title: 'The 8051 microcontroller has ____ interrupt sources.',
      options: {
        'a) 5': false,
        'b) 6': false,
        'c) 10': true,
        'd) 16': false,
      },
    ),
    Question(
      id: '27',
      title: 'The interrupt flag bits are located in the ____ register.',
      options: {
        'a) IE': true,
        'b) IP': false,
        'c) PSW': false,
        'd) TCON': false,
      },
    ),
    Question(
      id: '28',
      title:
          'The 8051 microcontroller can interface with an LCD using the ____ mode or the ____ mode.',
      options: {
        'a) 4-bit, 8-bit': true,
        'b) Serial, parallel': false,
        'c) Static, dynamic': false,
        'd) Reflective, transmissive': false,
      },
    ),
    Question(
      id: '29',
      title:
          "The LCD data pins are connected to the 8051 microcontroller's ____ port.",
      options: {
        'a) P0': false,
        'b) P1': false,
        'c) P2': false,
        'd) P3': true,
      },
    ),
    Question(
      id: '30',
      title:
          'Signal conditioning interfaces are used to ____ the signal from a sensor before it is input to a microcontroller.',
      options: {
        'a) Amplify': false,
        'b) Filter': false,
        'c) Convert from analog to digital': false,
        'd) All of the above': true,
      },
    ),
    Question(
      id: '31',
      title: 'A microcontroller at-least should consist of',
      options: {
        'a) RAM, ROM, I/O ports and timers': false,
        'b) CPU, RAM, I/O ports and timers': false,
        'c) CPU, RAM, ROM, I/O ports and timers': true,
        'd) CPU, ROM, I/O ports and timer': false,
      },
    ),
    Question(
      id: '32',
      title:
          'What is the time taken by one machine cycle if crystal frequency is 20MHz?',
      options: {
        'a) 1.085 micro seconds': false,
        'b) 0.60 micro seconds': true,
        'c) 0.75 micro seconds': false,
        'd) 1 micro seconds': false,
      },
    ),
    Question(
      id: '33',
      title:
          'What is the file extension used to load in a microcontroller to execute an instruction?',
      options: {
        'a) .doc': false,
        'b) .c': false,
        'c) .txt': false,
        'd) .hex': true,
      },
    ),
    Question(
      id: '34',
      title: 'Which of the following comes under the indexed addressing mode?',
      options: {
        'a) MOVX A, @DPTR': false,
        'b) MOVC @A+DPTR, A': true,
        'c) MOV A, R0': false,
        'd) MOV @R0, A': false,
      },
    ),
    Question(
      id: '35',
      title: 'For writing commands on an LCD, RS bit is',
      options: {
        'a) set': false,
        'b) reset': true,
        'c) set & reset': false,
        'd) none of the mentioned': false,
      },
    ),
    Question(
      id: '36',
      title:
          'The interrupt service routine always ends with the return (RET) instruction, and the execution of the RET instruction results in',
      options: {
        'a) POP the current stack top to PC': false,
        'b) POP the current stack top to PCW': true,
        'c) Both a and b': false,
        'd) None of the above': false,
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
