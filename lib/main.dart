import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override 
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(color: Color(0xFFFEC300)),
        brightness: Brightness.light,
        primaryColor: Color(0xFFFFFFFF),
        accentColor: Colors.cyan[300],
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override 
  _MystatefulWidgeState createState() => _MystatefulWidgeState();//1
}

class _MystatefulWidgeState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widget = <Widget>[
    Text(
      '首页',
      style: TextStyle(
        fontSize: 50,
        color: Colors.black,
      ),
    ),
      Text(
      '任务',
      style: TextStyle(
        fontSize: 50,
        color: Colors.black,
      ),
    ),
    Text(
      '我的',
      style: TextStyle(
        fontSize: 50,
        color: Colors.black,
      ),
    ),
  ];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('猫回收'),
      ),
      body: Center(
        child: _widget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('任务'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            title: Text('我的'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFFEC300),
        onTap: _onItemTapped,
      ),
      );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}