import 'package:flutter/material.dart';
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Меню')),
      body: Center(child: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
      }, child: Text('Инструкция'))),
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Инструкция по пользованию')),
      body: Center(child:
      FloatingActionButton(
          onPressed: (){
        Navigator.pop(context);
      }, child: Text('Назад'))),
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}
void main1() {
  runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(BuildContext context) => MainScreen(),
        '/second':(BuildContext context) => SecondScreen()
      }
  ));
}

Widget build(BuildContext context) {
  return Material(
    child: MaterialButton(
      onPressed: () {
        // функция, которая должна выполняться при нажатии на кнопку
      },
      color: Colors.blue,
      child: Text('Кнопка'),
    ),
  );
}