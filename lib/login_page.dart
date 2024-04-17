import 'package:flutter/material.dart';
import 'package:siptatif_app/animation_page.dart';
import 'beranda_page.dart';
import 'mahasiswa_page.dart';
import 'pembimbing_page.dart';
import 'penguji_page.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins', // Tambahkan font Poppins ke theme
      ),
      home: LoginPage(),
      routes: {
        '/animation': (context) => AnimationPage(''), // Tambahkan route untuk HomePage
        
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTextField('Username', Icons.person, context),
              SizedBox(height: 20.0),
              _buildTextField('Password', Icons.lock, context),
              SizedBox(height: 20.0),
              SizedBox(
                width: 200.0, // Atur lebar tombol sesuai keinginan
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [Color(0xFF42B883), Color(0xFF3D8B40)],
                    ),
                  ),
                  
                  child: MaterialButton(
                    onPressed: () {
                      // Aksi saat tombol Log In ditekan
                      Navigator.pushReplacementNamed(context, '/animation'); //direct ke animasi
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Log In',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Belum ada akun? ',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Daftar dulu Yuk!',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, IconData icon, BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF0F5612), width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[400]!, width: 1.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
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
