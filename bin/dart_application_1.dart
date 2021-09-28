import 'dart:math';

class Color {
  Color(this.value);
  final int value;
}

class View {
  int id;
  Color? color;

  View(this.id, {this.color});

  @override
  String toString() {
    return '$id';
  }
}
class Text extends View{
  String content  ; 

  Text(int id , this.content , {Color? color } ) : super (id, color : color ){

  }
}
void main() {


  /*
    1) Create class named `Text` that extends/inherits `View` class,
        and has a `String content` property.
        Here is the Text constuctor:
        Text(int id, this.content, {Color? color}) : super(id, color: color)
    2) Create new `Text` object with the following:
      var helloText = Text(<random id>, content: 'Hello' )
  */

  int id = Random().nextInt(10000);
  
    var helloText = Text(id , "Hello");
  
  

  print('hello: $helloText');
  task2();
}

void task2() {
  List<int> numbers = 
    List
    .generate(75, (index) => Random()
    .nextInt(10000));

  /*
    Separate even numbers from the above `numbers` list.
    List<int> evenNumbers = ...
  */
  
  List<int> evenNumbers =  
    numbers
    .where((x) => x % 2 == 0 )
    .toList() ; 

  print('evenNumbers: $evenNumbers');
}


// result of console 

// hello: 4899
// evenNumbers: [3822, 14, 6304, 1408, 6482, 9932, 8500, 3996, 6544, 5784, 6798, 3778, 5652, 214, 6546, 1820, 3312, 8790, 5060, 86, 3026, 9346, 3882, 3032, 306, 3840, 1304, 2296, 3672, 4418, 4104, 8886, 1112, 6438]

