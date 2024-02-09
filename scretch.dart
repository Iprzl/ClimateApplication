import 'dart:io';
void main(){
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1(){
  String result = 'Task1 data';
  print('Task1 Completed');
}

Future task2() async {
  String result = '';
  Duration threeSeconds = Duration(seconds: 3);
  await Future.delayed(threeSeconds, (){
    result = 'Task2 result';
    print('Task2 Completed');
  });
  return result;
}

void task3(String task2Result){
  //String result = 'Task3 data';
  print('Task3 Completed with $task2Result');
}