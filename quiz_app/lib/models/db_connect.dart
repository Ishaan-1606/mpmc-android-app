import 'package:http/http.dart' as http; //the http package
import './question_model.dart';
import 'dart:convert';

class DBconnect {
  //we first create a function to add a question to our database...
  //declare the name of the table that you want to create an add .json as suffix
  final url = Uri.parse(
      'https://console.firebase.google.com/u/0/project/quizapp-32c08/database/quizapp-32c08-default-rtdb/data/~2F/questions.json');
  Future<void> addQuestion(Question question) async {
    http.post(url,
        body: json.encode({
          'title': question.title,
          'options': question.options,
        }));
  }
}
