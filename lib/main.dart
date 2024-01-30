import 'package:flutter/material.dart';
import 'package:proekt/pages/mainscreen.dart'
;
void main() {
  runApp(
      MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('Школьный навигатор'),
              backgroundColor: Colors.orange[600],
            ),
            body: App(),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader (
                      decoration: BoxDecoration(color: Colors.orange),
                      accountName: Text('Школьный навигатор'),
                      accountEmail: Text(""),
                      currentAccountPicture: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.red,
                          )
                      ),
                    ),
                  ),
                  ListTile(
                      title: new Text("Инструкция по применению"),
                      leading: Icon(Icons.account_box),
                      onTap: (){}
                  ),
                  ListTile(
                      title: new Text("Настройки"),
                      leading: Icon(Icons.settings),
                      onTap: (){}
                  )
                ],
              ),
            ),
          )));
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

