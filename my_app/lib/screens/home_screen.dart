import 'package:flutter/material.dart';
//Import Screen Bottom Navbar
import 'package:my_app/screens/news_screen.dart';
import 'package:my_app/screens/your_poin_page.dart';
import 'package:my_app/screens/discussion_page.dart';
import 'package:my_app/screens/account_page.dart';
//Import Screen category
import 'package:my_app/screens/scan_page.dart';
import 'package:my_app/screens/company_page.dart';
import 'package:my_app/screens/ecocycle_page.dart';
import 'package:my_app/screens/article_page.dart';
import 'package:my_app/screens/ecoedu_page.dart';
import 'package:my_app/screens/location_page.dart';

class HomePage extends StatelessWidget {
  // Creating Static data in Lists
  List catNames = [
    "Scan",
    'EcoCycle',
    'Company',
    'Article',
    'EcoEdu',
    'Location',
  ];

  // List Warna
  List<Color> catColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFFC7F7F),
    Color(0xFFCB84FB),
    Color(0xFF78E667),
  ];

  // List Icon
  List<Icon> catIcons = [
    Icon(Icons.qr_code_scanner_outlined, color: Colors.white, size: 30),
    Icon(Icons.recycling_rounded, color: Colors.white, size: 30),
    Icon(Icons.store, color: Colors.white, size: 30),
    Icon(Icons.article, color: Colors.white, size: 30),
    Icon(Icons.book, color: Colors.white, size: 30),
    Icon(Icons.location_city, color: Colors.white, size: 30),
  ];

  List imgList = [
    'environmental1',
    'environmental2',
    'environmental3',
    'environmental4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            //Recomend (top: 15, left: 15, right: 15, bottom: 15)
            padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 164, 3),
              borderRadius: BorderRadius.only(
                //lengkungan backround hijau
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // logo profile dan menu hamburger
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                // Nama User
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Hi, Agastya Dava",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                //Teks Search Here
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  //Teks Box, Size big recomend : 55
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
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Padding(
            padding: EdgeInsets.only(top: 5, left: 15, right: 15),
            child: 
            Column(
              children: [
                // Foto Banner kecil
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'images/banner1.png',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: 120, // Ukuran kecil
                    ),
                  ),
                ),
                // Teks Category dan See All
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
                // 6 Fitur Scan, EcoCycle, Company, Article, EcoEdu, Location
                SizedBox(height: 10), // Spasi antara header dan GridView
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  //LOGIKA dari Setiap Category
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        // Navigasi berdasarkan kategori
                        switch (index) {
                          case 0: // Scan
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScanPage()),
                            );
                            break;
                          case 1: // EcoCycle
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EcoCyclePage()),
                            );
                            break;
                          case 2: // Company
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CompanyPage()),
                            );
                            break;
                          case 3: // Article
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ArticlePage()),
                            );
                            break;
                          case 4: // EcoEdu
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EcoEduPage()),
                            );
                            break;
                          case 5: // Location
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LocationPage()),
                            );
                            break;
                        }
                      },
                      child: Column(
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
                      ),
                    );
                  },
                ),

                // Tulisan Newest dan See All
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

                // Kategori News
                SizedBox(height: 10),
                //Ngambil Nama dari List
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewsScreen(imgList[index]),
                            ));
                      },
                      //Border Padding
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 5, left: 15, right: 15, bottom: 20),
                              //Ngambil Gambar dari yang diatas dan repo
                              child: Image.asset(
                                "images/${imgList[index]}.jpg",
                                width: 100,
                                height: 100,
                              ),
                            ),
                            //Lengkah antar Gambar dan Teks
                            SizedBox(height: 5),
                            Text(
                              imgList[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            //Lengkah antar Judul dan Deskripsi
                            SizedBox(height: 5),
                            Text(
                              "20 Videos",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      // Navbar Bawah
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color.fromARGB(255, 13, 158, 0),
        selectedFontSize: 16,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.money_sharp), label: 'Your Poin'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: 'Discussion'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        //untuk pindah navbar (logikanya)
        onTap: (index) {
          print("Tapped on $index");
          // Navigasi berdasarkan index item
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => YourPoinPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DiscussionPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountPage()),
            );
          }
        },
      ),
    );
  }
}
