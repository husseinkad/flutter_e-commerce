import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedScreenIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('d'),
    Text('d'),
    Text('d'),
    Text('d'),
    Text('d'),
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    var appBar = AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0,
      title: const Text('MainPage', style: TextStyle(fontSize: 21, color: Colors.black),),
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset('assets/bottompic.png', color: Colors.black,),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/bottompic.png', color: Colors.black,),
        ),
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: _widgetOptions.elementAt(_selectedScreenIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.grey[900]),
        selectedLabelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey[900],
        selectedItemColor: Colors.black,

        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,

        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/bottompic.png"),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/bottompic.png"),
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/bottompic.png"),
            ),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/bottompic.png"),
            ),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/bottompic.png"),
            ),
            label: 'Articles',
          ),

        ],
      ),
    );
  }
}
