import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda',
        style: GoogleFonts.poppins()),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Text A',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              Text(
                'Text B',
                style: TextStyle(fontSize: 18, decoration: TextDecoration.underline),
              ),
              SizedBox(height: 5),
              Text('Text C', style: TextStyle(fontSize: 18)),
              SizedBox(height: 5),
              Text(
                'Text D',
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      print('Tombol "cek detail" ditekan');
                    },
                    child: Text(
                      'Cek Detail',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.grey),
          // Tambahkan data dummy di sini
        ],
      ),
    );
  }
}
