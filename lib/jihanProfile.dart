import 'package:flutter/material.dart';

class JihanProfile extends StatelessWidget {
  const JihanProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Jihan', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/pulau.jpg'), // Ganti gambar sesuai kebutuhan

            ),
            const SizedBox(height: 20),
            const Text(
              'Jihan Bunga Maulana',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 80),
            const Text(
              'Ini adalah deskripsi lengkap tentang Jihan.\n Nama: Jihan Bunga Maulana\n Kelas: 12 RPL 2\n Alamat: Jl. Raya No. 123, Bogor\n Hobi: Mendengarkan Musik ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, color: Color.fromARGB(255, 95, 93, 93)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Kembali"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
