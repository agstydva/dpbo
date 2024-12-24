import 'package:flutter/material.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String? _result; // Variabel untuk menyimpan hasil scan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _result ?? 'Data belum tersedia',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              child: const Icon(Icons.center_focus_strong),
              onPressed: () => _openScanner(context), // Perbaiki pemanggilan fungsi
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openScanner(BuildContext context) async {
    // Navigasi ke halaman scanner dan tunggu hasilnya
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScannerPage()),
    );

    // Menyimpan hasil scan ke variabel _result
    if (result != null) {
      setState(() {
        _result = result.toString();
      });
    }
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
        child: ElevatedButton(
          onPressed: () {
            // Menutup halaman scanner dan mengirimkan hasil scan
            Navigator.pop(context, 'Hasil scan berhasil');
          },
          child: const Text('Kembali dengan hasil scan'),
        ),
      ),
    );
  }
}
