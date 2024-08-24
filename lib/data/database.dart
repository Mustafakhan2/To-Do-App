import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  //run this method if its the first time ever opeaning the App
  void createInitialData() {
    toDoList = [
      ['Add Something', false],
    ];
  }

  //load the data
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
