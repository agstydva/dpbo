import 'package:flutter/material.dart';
import 'package:my_app/screens/news_screen.dart';

class EcoEduPage extends StatelessWidget {
  final List<String> imgList;
  const EcoEduPage({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EcoEdu"),
      ),
      body: GridView.builder(
        itemCount: imgList.length,
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigasi ke NewsScreen dengan mengoper data `jpg`
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsScreen(imgList[index]),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFF5F3FF),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(
                      "images/${imgList[index]}.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Text(
                    imgList[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "20 Videos",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
