import 'package:flutter/material.dart';
// Import Screen Bottom Navbar
import 'package:my_app/screens/news_screen.dart';
import 'package:my_app/screens/your_poin_page.dart';
import 'package:my_app/screens/discussion_page.dart';
import 'package:my_app/screens/account_page.dart';
// Import Screen category
import 'package:my_app/screens/scan_page.dart';
import 'package:my_app/screens/company_page.dart';
import 'package:my_app/screens/ecocycle_page.dart';
import 'package:my_app/screens/article_page.dart';
import 'package:my_app/screens/ecoedu_page.dart';
import 'package:my_app/screens/location_page.dart';

class HomePage extends StatelessWidget {
  // Creating Static data in Lists
  final List<String> catNames = [
    "Scan",
    'EcoCycle',
    'Company',
    'Article',
    'EcoEdu',
    'Location',
  ];

  // List Warna
  final List<Color> catColors = [
    const Color(0xFFFFCF2F),
    const Color(0xFF6FE08D),
    const Color(0xFF61BDFD),
    const Color(0xFFFC7F7F),
    const Color(0xFFCB84FB),
    const Color(0xFF78E667),
  ];

  // List Icon
  final List<Icon> catIcons = [
    const Icon(Icons.qr_code_scanner_outlined, color: Colors.white, size: 30),
    const Icon(Icons.recycling_rounded, color: Colors.white, size: 30),
    const Icon(Icons.store, color: Colors.white, size: 30),
    const Icon(Icons.article, color: Colors.white, size: 30),
    const Icon(Icons.book, color: Colors.white, size: 30),
    const Icon(Icons.location_city, color: Colors.white, size: 30),
  ];

  final List<String> imgList = [
    'environmental1',
    'environmental2',
    'environmental3',
    'environmental4',
  ];

  HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 5),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 164, 3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
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
                const SizedBox(height: 10),
                const Padding(
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
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
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
                      prefixIcon: const Icon(
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
            padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
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
                const Row(
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
                const SizedBox(height: 10),
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ScanPage()));
                            break;
                          case 1:
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EcoCyclePage()));
                            break;
                          case 2:
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyPage()));
                            break;
                          case 3:
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ArticlePage()));
                            break;
                          case 4:
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EcoEduPage(imgList: imgList)));
                            break;
                          case 5:
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LocationPage()));
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
                          const SizedBox(height: 10),
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
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: const Color.fromARGB(255, 13, 158, 0),
        selectedFontSize: 16,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.money_sharp), label: 'Your Poin'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Discussion'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => YourPoinPage()));
          } else if (index == 2) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DiscussionPage()));
          } else if (index == 3) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage()));
          }
        },
      ),
    );
  }
}
