import 'package:flutter/material.dart';

class GhifariProfile extends StatelessWidget {
  const GhifariProfile({super.key});

  @override



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Ghifari', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/pulau.jpg'), // Ganti gambar sesuai kebutuhan
            ),
            const SizedBox(height: 20),
            const Text(
              'M. Ghifari Bima Khadafi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            const Text(
              'Panggila aja Ghifari .\n Kelas: 12 RPL 2\n Alamat: Citeureup\n Hobi: Apa ya',
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
