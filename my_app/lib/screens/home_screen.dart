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
    'images/environmental1.jpg',
    'images/environmental2.jpg',
    'images/environmental3.jpg',
    'images/environmental4.jpg',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Newest",
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

                // GridView untuk daftar "Newest"
                Expanded(
                  child: GridView.builder(
                    itemCount: imgList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Jumlah kolom
                      childAspectRatio:
                          (MediaQuery.of(context).size.height - 50 - 25) /
                              (4 * 240),
                      mainAxisSpacing: 10, // Jarak antar baris
                      crossAxisSpacing: 10, // Jarak antar kolom
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            // Gambar di dalam grid
                            Padding(
                              padding: EdgeInsets.only(
                                top: 5,
                                left: 15,
                                right: 15,
                                bottom: 20,
                              ),
                              child: Image.asset(
                                "images/${imgList[index]}.jpg", // Path gambar
                                width: 100,
                                height: 100,
                              ),
                            ),
                            SizedBox(height: 5),

                            // Nama gambar
                            Text(
                              imgList[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(height: 5),

                            // Deskripsi tambahan
                            Text(
                              "20 Videos", // Deskripsi jumlah video
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
