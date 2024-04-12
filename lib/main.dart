import 'package:flutter/material.dart';
import 'package:my_app/screens/API.dart';
import 'package:my_app/screens/CRUD.dart';
import 'package:my_app/screens/chat.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/login.dart';
import 'package:my_app/screens/news_screen.dart';
import 'package:my_app/screens/profile_screen.dart';
//import 'package:my_app/screens/setting_screen.dart';
//import 'package:my_app/screens/profile_screen.dart';
import 'package:my_app/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HealthSplash(),
      routes: {
        '/home':(context) => HomePage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    ChatPage(),
    ProfileScreen(),
    
  ];

  final List<String> _appBarTitles = const [
    'Home',
    'Chat',
    'Profile',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      body: _screens[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 177, 114, 232),
              ),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo_aplikasi.png',
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Deskripsi'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("About Us"),
                      content: Text(
                        "Selamat datang di aplikasi kami! Kami adalah sebuah platform yang didedikasikan untuk menyediakan pengalaman yang luar biasa bagi pengguna kami. Di sini, kami berusaha untuk memberikan layanan terbaik dalam hal Hidup Sehat. Kami berkomitmen untuk memberikan solusi yang inovatif dan berguna bagi kebutuhan Anda.\n\nDengan aplikasi kami, Anda dapat mengetahui bagaimana cara hidup sehat dan berkonsultasi dengan dokter. Kami selalu berusaha untuk meningkatkan pengalaman pengguna Anda, jadi jangan ragu untuk memberikan umpan balik atau saran kepada kami.\n\nTerima kasih telah memilih kami sebagai mitra dalam perjalanan Anda. Mari bersama-sama menciptakan pengalaman yang luar biasa!"
                      ),
                      actions: <Widget>[],
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Latihan Api'),
              onTap: () {
                _onItemTapped(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => APIscreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Latihan CRUD'),
              onTap: () {
                _onItemTapped(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddTypes()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black, // Background color of the bottom navigation bar
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
