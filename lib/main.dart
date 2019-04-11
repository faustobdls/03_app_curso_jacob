import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fausto Blanco'),
        ),
        
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.network(
                    'https://pbs.twimg.com/profile_images/666122570777890816/UyAZPBfx_400x400.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                accountName: Text('Fausto Blanco'),
                accountEmail: Text('fausto.level@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Account'),
              ),
              ListTile(
                leading: Icon(Icons.notifications_active),
                title: Text('Notifications'),
              ),
              ListTile(
                leading: Icon(Icons.hot_tub),
                title: Text('Putas'),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Exit'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.favorite),
        ),
        body: Container(
          alignment: Alignment.center,
          child: RaisedButton(
            child: Text('Fausto Blanco'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Alou lesado'),
                  );
                }
              );
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.hot_tub), title: Text('putas')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin), title: Text('profile')),
          ],
        ),
      ),
    );
  }
}
