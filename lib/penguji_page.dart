import 'package:flutter/material.dart';

class PengujiPage extends StatefulWidget {
  @override
  _PengujiPageState createState() => _PengujiPageState();
}

class _PengujiPageState extends State<PengujiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penguji'),
      ),
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          // Implementasi data dummy untuk Penguji
          return ListTile(
            title: Text('Penguji ${index + 1}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama: Penguji ${index + 1}'),
                Text('NIDN: 12345${index + 1}'),
                Text('Jenis Kelamin: Laki-laki'),
                Text('Keahlian: Keahlian ${index + 1}'),
                SizedBox(height: 8),
                Text(
                  'Status: Tersedia untuk 5 orang mahasiswa',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Kuota: ${index + 1}/6',
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
