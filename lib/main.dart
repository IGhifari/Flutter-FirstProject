import 'package:flutter/material.dart';
import 'dhafinProfile.dart';
import 'jihanProfile.dart';
import 'ghifariProfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiftly Team',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tim Swiftly", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TeamMemberCard(
              name: "Jihan Bunga Maulana",
              description: "Ini adalah deskripsi singkat tentang Jihan.",
              image: AssetImage('assets/pulau.jpg'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JihanProfile()),
                );
              },
            ),

            TeamMemberCard(
              name: "M. Ghifari Bima Khadafi",
              description: "Ini adalah deskripsi singkat tentang Ghifari.",
              image: AssetImage('assets/pulau.jpg'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GhifariProfile(),
                  ),
                );
              },
            ),

            TeamMemberCard(
              name: "Muhammad Dhafin Arizki",
              description: "Ini adalah deskripsi singkat tentang Dhafin.",
              image: AssetImage('assets/pulau.jpg'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DhafinProfile(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String description;
  final IconData? icon;
  final ImageProvider? image;
  final VoidCallback? onTap;

  const TeamMemberCard({
    super.key,
    required this.name,
    required this.description,
    this.icon,
    this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 12),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundImage: image,
                backgroundColor: Colors.blueGrey[100],
                child: image == null && icon != null
                    ? Icon(icon, size: 32, color: Colors.blueGrey[700])
                    : null,
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
