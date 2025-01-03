import 'package:flutter/material.dart';
import 'package:my_app/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                // Warna Latar Putih Lengkung di bagian kanan
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                // Warna Latar Belakang dari Gambar
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 175, 6, 1),
                    // Buat Lengkungan pada Backround, bottomRight --> Kanan
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  // Menaruh Gambar dan posisi di tengah
                  child: Center(
                    child:
                        Image.asset("images/environmentally.png", scale: 0.8),
                  ),
                ),
              ],
            ),
            // Warna Latar Hijau Lengkung di bagian kiri
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 175, 6, 1),
                ),
              ),
            ),
            // Backround Putih 
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    // Judul
                    const Text(
                      "GreenBucks",
                      // Style Judul
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),
                    // SizedBox = Space 
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                      ),
                      // Deskripsi di bawah judul
                      child: Text(
                        "The importance of caring for the environment must start with ourselves",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                    //Box Tombol "Get Start"
                    const SizedBox(height: 30),
                    Material(
                      color: const Color(0xFFD8B930),
                      borderRadius: BorderRadius.circular(10),
                      // Arah dari tombol jika di klik
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 80),
                              // Tulisan di dalam Tombol
                          child: const Text(
                            "Get Start",
                            // Style
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
