import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PembimbingPage extends StatefulWidget {
  @override
  _PembimbingPageState createState() => _PembimbingPageState();
}

class _PembimbingPageState extends State<PembimbingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pembimbing',style: GoogleFonts.poppins()),
      ),
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          // Implementasi data dummy untuk Pembimbing
          return ListTile(
            title: Text('Pembimbing ${index + 1}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama: Pembimbing ${index + 1}'),
                Text('NIDN: 54321${index + 1}'),
                Text('Jenis Kelamin: Perempuan'),
                Text('Keahlian: Keahlian ${index + 1}'),
                SizedBox(height: 8),
                Text(
                  'Status: Tersedia untuk 3 orang mahasiswa',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Kuota: ${index + 1}/4',
                  style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
