import 'package:flutter/material.dart';
import 'package:task_flutter/pages/home_page.dart';
import 'package:task_flutter/utiles/colors.dart';
import 'package:task_flutter/utiles/text_styles.dart';

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
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  int _selectedScreenIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('ORDER'),
    Text('LAP TEST'),
    Text('OFFERS'),
    Text('PROFILE'),
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
      title: Text('MEDICINE', style: boldTitleStyle,),
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset('assets/upperprofile.png', color: Colors.black,),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/cart.png', color: Colors.black,),
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
        unselectedLabelStyle: TextStyle(color: customBlack),
        selectedLabelStyle: TextStyle(color: customBlack, fontWeight: FontWeight.bold),
        unselectedItemColor:customGrey,
        selectedItemColor: customBlack,

        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,

        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/home.png"),
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/box.png"),
            ),
            label: 'ORDERS',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/lap.png"),
            ),
            label: 'LAP TEST',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/%.png"),
            ),
            label: 'OFFERS',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/profile.png"),
            ),
            label: 'PROFILE',
          ),

        ],
      ),
    );
  }
}
