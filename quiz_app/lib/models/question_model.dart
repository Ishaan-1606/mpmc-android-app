//we create our question model here
class Question {
  //define how a question looks like and every question must have an id
  final String id;
  //every question will have an id which is the question itself.
  final String title;
  //every question will have options too
  final Map<String, bool> options;
  //options presented in the form of 1.true else 2,false sorta thing
  Question({
    //creating a constructor
    required this.id,
    required this.title,
    required this.options,
  });
  //override the toString method to print the questions onto the console
  @override
  String toString() {
    return 'Question(id:$id,title: $title,options:$options)';
  }
}
