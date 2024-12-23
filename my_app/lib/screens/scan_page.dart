import 'package:flutter/material.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? result; // Variable untuk menyimpan hasil scan

    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result ?? 'Data belum tersedia',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              child: const Icon(Icons.center_focus_strong),
              onPressed: () {
                _openScanner(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _openScanner(BuildContext context) {
    // Navigasi ke halaman scanner (ScannerPage perlu Anda buat)
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScannerPage()),
    );
  }
}

class ScannerPage extends StatelessWidget {
  const ScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scanner"),
      ),
      body: Center(
        child: const Text(
          "Halaman Scanner (Implementasikan Scanner Anda di sini)",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
