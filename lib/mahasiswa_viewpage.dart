import 'package:flutter/material.dart';

class MahasiswaViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tombol berkas dan dosen
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan fungsi toggleContent untuk tombol berkas
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      backgroundColor: Colors.green, // Warna latar belakang tombol aktif
                    ),
                    child: Text('Berkas Mahasiswa'),
                  ),
                  SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan fungsi toggleContent untuk tombol dosen
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      backgroundColor: Colors.grey, // Warna latar belakang tombol tidak aktif
                    ),
                    child: Text('Input Dosen Penguji'),
                  ),
                ],
              ),
            ),
            // Formulir berkas mahasiswa
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Formulir Pengajuan Tugas Akhir',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Jenis Daftar'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Nama'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Judul Tugas Akhir'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Kategori'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Calon Dosen Pembimbing 1'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Calon Dosen Pembimbing 2'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Berkas'),
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Disetujui'),
                      SizedBox(width: 10.0),
                      Checkbox(value: false, onChanged: (value) {}),
                      Text('Ditolak'),
                    ],
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Catatan'),
                    maxLines: 4,
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan fungsi untuk mengirim formulir
                    },
                    child: Text('Kirim'),
                  ),
                ],
              ),
            ),
            // Formulir input dosen penguji
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Input Dosen Penguji',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Dosen Penguji 1'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Dosen Penguji 2'),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan fungsi untuk mengirim data dosen penguji
                    },
                    child: Text('Kirim'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
