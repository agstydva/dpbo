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

  List imgList = [
    'image1',
    'image2',
    'image3',
    'image4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Header
          Container(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 164, 3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.account_circle_rounded,
                        size: 30, color: Colors.white),
                    Icon(Icons.menu, size: 30, color: Colors.white),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Hi, Agastya Dava",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here....",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(Icons.search, size: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Banner
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'images/banner1.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: 120,
              ),
            ),
          ),
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
}
