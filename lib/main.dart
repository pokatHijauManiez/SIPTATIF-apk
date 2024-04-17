import 'package:flutter/material.dart';
import 'animation_page.dart';
import 'beranda_page.dart';
import 'mahasiswa_page.dart';
import 'penguji_page.dart';
import 'pembimbing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIPTATIF App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
      routes: {
        '/': (context) => LoginPage(), // Rute awal, bisa juga rute untuk halaman login
        '/home': (context) => HomePage(), // Rute untuk halaman home
        '/animation': (context) => AnimationPage('Selamat Datang, Abmi Edri'), // Rute untuk halaman animation dengan parameter userName
},
);
  }
  
  LoginPage() {}
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    BerandaPage(),
    MahasiswaPage(),
    PengujiPage(),
    PembimbingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SIPTATIF',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Color(0xFF0F5612),
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 35, //uk avatar
            backgroundImage: AssetImage('assets/gambar-profil.JPG'), //foto profil ges
            child: IconButton(
            icon: Icon(Icons.badge, size: 40,), // Icon profil pengguna
            onPressed: () {
              // Tampilkan menu navigasi saat ikon profil ditekan
              showProfileMenu(context);
            },
          ),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF0F5612), size: 30),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Color(0xFF0F5612), size: 30),
            label: 'Mahasiswa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xFF0F5612), size: 30),
            label: 'Penguji',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt, color: Color(0xFF0F5612), size: 30),
            label: 'Pembimbing',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF0F5612),
        unselectedItemColor: Color(0xFF0F5612),
        onTap: _onItemTapped,
      ),
    );
  }

  void showProfileMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext ctx) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profil Saya'),
                onTap: () {
                  // Tambahkan logika untuk menu "Profil Saya" di sini
                  Navigator.pop(context); // Tutup menu navigasi
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log Out'),
                onTap: () {
                  // Tambahkan logika untuk menu "Log Out" di sini
                  Navigator.pop(context); // Tutup menu navigasi
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
