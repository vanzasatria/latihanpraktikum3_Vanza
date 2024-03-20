import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peduli Lindungi'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.blue, // Warna latar biru untuk header
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Entering a public space?',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white), // Warna teks putih
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Stay alert to stay safe',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white), // Warna teks putih
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Tambahkan fungsi untuk menangani tombol check in di sini
                      },
                      child: const Text('Check In'),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        'Fitur Utama',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildMenuRow([
                      _buildMenuItem('Sertivikat Vaksin',
                          'images/menu-sv.png', 'Sertivikat Vaksin'),
                      _buildMenuItem(
                          'Hasil Tes Covid-19', 'images/menu-tes.png', 'Hasil Tes Covid-19'),
                      _buildMenuItem(
                          'EHAC', 'images/menu-ehac.png', 'EHAC'),
                    ]),
                    const SizedBox(height: 20),
                    _buildMenuRow([
                      _buildMenuItem(
                          'Riwayat Check-In', 'images/menu-riwayat.png', 'Riwayat Check-In'),
                      _buildMenuItem('Aturan Perjalanan', 'images/menu-aturan.png',
                          'Aturan Perjalanan'),
                      _buildMenuItem(
                          'Hasil Tes Covid-19', 'images/menu-hasil.png', 'Hasil Tes Covid-19'),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }

  Widget _buildMenuItem(String title, String imagePath, String featureName) {
    return SizedBox(
      width: 100,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 40, height: 40),
            const SizedBox(height: 10),
            Text(
              featureName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}