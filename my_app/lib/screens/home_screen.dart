import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List catNames = [
  "Scan",
  'EcoCycle',
  'Company',
  'Article',
  'EcoEdu',
  'Location',
];

List<Color> catColors = [
  Color(0xFFFFCF2F),
  Color(0xFF6FE08D),
  Color(0xFF61BDFD),
  Color(0xFFFC7F7F),
  Color(0xFFCB84FB),
  Color(0xFF78E667),
];

List<Icon> catIcons = [
  Icon(Icons.qr_code_scanner_outlined, color: Colors.white, size: 30),
  Icon(Icons.recycling_rounded, color: Colors.white, size: 30),
  Icon(Icons.store, color: Colors.white, size: 30),
  Icon(Icons.article, color: Colors.white, size: 30),
  Icon(Icons.book, color: Colors.white, size: 30),
  Icon(Icons.location_city, color: Colors.white, size: 30),
];

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(
      children: [
        // Header & Banner
        Container(/* ... */),
        Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
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
              SizedBox(height: 10),
              GridView.builder(
                itemCount: catNames.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.1,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: catColors[index],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: catIcons[index],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        catNames[index],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
