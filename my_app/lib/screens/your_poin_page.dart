import 'package:flutter/material.dart';

void main() {
  runApp(const YourPoinPage());
}

class YourPoinPage extends StatelessWidget {
  const YourPoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eco Point UI',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eco Point"),
        backgroundColor: Color.fromARGB(255, 13, 158, 0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ECO Point Section
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 38, 134, 29),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "ECO Point",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "ID : XXXX-XXX",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "9.999",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // Category Section
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15.0), // Memberi jarak kiri dan kanan
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bank",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF674AEF),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Category Icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 icons per row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  // List of logos and labels
                  final categoryData = [
                    {"image": "images/logo_bank1.jpeg", "label": "DANA"},
                    {"image": "images/logo_bank2.jpeg", "label": "GOPAY"},
                    {"image": "images/logo_bank3.jpeg", "label": "BCA"},
                    {"image": "images/logo_bank4.jpeg", "label": "Mandiri"},
                    {"image": "images/logo_bank5.jpeg", "label": "BSI"},
                    {"image": "images/logo_bank0.jpeg", "label": "OTHER"},
                  ];

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Circular Image with Border
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black, // Border hitam
                            width: 0.5, // Ketebalan border
                          ),
                          image: DecorationImage(
                            image: AssetImage(categoryData[index]['image']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      // Label
                      Text(
                        categoryData[index]['label']!,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // Reverse Vending Machine Section
            const Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 10),
              child: Text(
                "Reverse Vending Machine",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            // City Filter Chips
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Wrap(
                spacing: 10,
                children: const [
                  CityChip(label: "Terdekat"),
                  CityChip(label: "Jakarta"),
                  CityChip(label: "Bandung"),
                  CityChip(label: "Yogyakarta"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget for City Chips
class CityChip extends StatelessWidget {
  final String label;

  const CityChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey[300],
    );
  }
}
