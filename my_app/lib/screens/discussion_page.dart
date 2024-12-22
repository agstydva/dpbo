import 'package:flutter/material.dart';

void main() {
  runApp(const DiscussionPage());
}

class DiscussionPage extends StatelessWidget {
  const DiscussionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Social Feed',
      debugShowCheckedModeBanner: false,
      home: SocialFeedScreen(),
    );
  }
}

class SocialFeedScreen extends StatelessWidget {
  const SocialFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: const Icon(Icons.account_circle, color: Colors.white, size: 35),
        title: SizedBox(
          height: 35,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search discussion',
              hintStyle: const TextStyle(fontSize: 14),
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PostCard(
              username: 'Homelander',
              handle: '@justiceforhomelander',
              date: '29 Nov',
              question:
                  'Pandawara banget, nih! Anak muda yang nggak cuma peduli, tapi juga siap bergerak buat jaga lingkungan. Yuk, bareng-bareng kita bikin perubahan yang keren buat Indonesia!',
              profileImage: 'images/profile_picture5.jpeg', // Gambar profil lokal
              imagePath: 'images/foto_diskusi1.jpeg', // Gambar postingan lokal
              reactions: {'likes': 10, 'comments': 70, 'shares': 100},
            ),
            PostCard(
              username: 'Gwenn Stacy',
              handle: '@spidergwenn',
              date: '18 Okt',
              question: 'pakah transisi ke energi terbarukanA akan berdampak negatif pada pekerja di sektor bahan bakar fosil?',
              profileImage: 'images/profile_picture7.jpeg',
              imagePath: 'images/foto_diskusi2.jpeg',
              reactions: {'likes': 58, 'comments': 50, 'shares': 90},
            ),
            PostCard(
              username: 'Boba Fett',
              handle: '@starwars22',
              date: '8 Jun',
              question:
                  'Bagaimana efektivitas program penghijauan (reforestasi) dibandingkan dengan strategi pengurangan emisi karbon lainnya?',
              profileImage: 'images/profile_picture4.jpeg', // Gambar profil lokal
              imagePath: 'images/foto_diskusi3.jpeg', // Gambar postingan lokal
              reactions: {'likes': 30, 'comments': 70, 'shares': 100},
            ),
            PostCard(
              username: 'Agastya Dava',
              handle: '@agstydva',
              date: '22 Jan',
              question: 'Orang Jepang yang bersihin sampah di GBK ini bener-bener bikin kita malu. Di tengah keramaian dan euforia, mereka tetap inget pentingnya kebersihan dan lingkungan, sementara kita malah sibuk buat ninggalin sampah sembarangan. Tindakan mereka jadi pengingat besar buat kita, bahwa menjaga kebersihan itu tanggung jawab bersama.',
              profileImage: 'images/profile_picture3.jpeg',
              imagePath: 'images/foto_diskusi4.webp',
              reactions: {'likes': 978, 'comments': 50, 'shares': 90},
            ),
            PostCard(
              username: 'Batman',
              handle: '@ilovegotham',
              date: '15 Des',
              question:
                  'Bagaimana efektivitas program penghijauan (reforestasi) dibandingkan dengan strategi pengurangan emisi karbon lainnya?',
              profileImage: 'images/profile_picture2.jpeg', // Gambar profil lokal
              imagePath: 'images/foto_diskusi5.jpeg', // Gambar postingan lokal
              reactions: {'likes': 27, 'comments': 70, 'shares': 100},
            ),
            PostCard(
              username: 'Harvey Dent',
              handle: '@twoface',
              date: '8 Feb',
              question: 'Apakah transisi ke energi terbarukan akan berdampak negatif pada pekerja di sektor bahan bakar fosil?',
              profileImage: 'images/profile_picture8.jpeg',
              imagePath: 'images/foto_diskusi6.jpeg',
              reactions: {'likes': 88, 'comments': 50, 'shares': 90},
            ),
          ],
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String username;
  final String handle;
  final String date;
  final String question;
  final String? profileImage; // Gambar profil (opsional)
  final String? imagePath; // Gambar postingan (opsional)
  final Map<String, int> reactions;

  const PostCard({
    super.key,
    required this.username,
    required this.handle,
    required this.date,
    required this.question,
    this.profileImage,
    this.imagePath,
    required this.reactions,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              backgroundImage: profileImage != null
                  ? AssetImage(profileImage!) // Menampilkan gambar lokal
                  : null, // Jika tidak ada gambar profil
              child: profileImage == null
                  ? const Icon(Icons.person, color: Colors.white)
                  : null, // Default icon jika tidak ada gambar profil
            ),
            title: Text(username, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('$handle • $date'),
            trailing: const Icon(Icons.close),
          ),
          // Text Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              question,
              style: const TextStyle(fontSize: 15),
            ),
          ),
          // Optional Image (Lokal Asset Image)
          if (imagePath != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                imagePath!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
            ),
          // Footer (Icons for Like, Comment, Share)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.thumb_up, size: 20),
                    const SizedBox(width: 5),
                    Text(reactions['likes'].toString()),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.comment, size: 20),
                    const SizedBox(width: 5),
                    Text(reactions['comments'].toString()),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.share, size: 20),
                    const SizedBox(width: 5),
                    Text(reactions['shares'].toString()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
