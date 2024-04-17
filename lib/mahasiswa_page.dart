import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siptatif_app/mahasiswa_viewpage.dart';

class MahasiswaPage extends StatefulWidget {
  @override
  _MahasiswaPageState createState() => _MahasiswaPageState();
}

class _MahasiswaPageState extends State<MahasiswaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mahasiswa',style: GoogleFonts.poppins()),
      ),
      body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          // Implementasi data dummy untuk Mahasiswa
          return ListTile(
            title: Text('Mahasiswa ${index + 1}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tanggal: 15 April 2024'),
                Text('Judul: Mahasiswa ${index + 1}'),
                Text('NIM: 12345678${index + 1}'),
                Text('Nama: John Doe'),
                Text('Email: johndoe@example.com'),
                SizedBox(height: 8),
                Text(
                  'Status: Disetujui',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MahasiswaViewPage()),);
                    print('Tombol "Lihat" ditekan untuk Mahasiswa ke-${index + 1}');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                  child: Text('Lihat', style: TextStyle(fontSize: 12)),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    print('Tombol "Hapus" ditekan untuk Mahasiswa ke-${index + 1}');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                  child: Text('Hapus', style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
