import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      body: Column(
        children: [
          // Bagian atas: Profil pengguna (foto, nama, email, dan tombol Edit Profile)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
                // Foto profil
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/profile_picture.jpg'), // Ganti dengan gambar Anda
                  backgroundColor: Colors.grey[200],
                ),
                SizedBox(height: 12),
                // Nama pengguna
                Text(
                  'Agastya Dava',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                // Email pengguna
                Text(
                  'dava123@gmail.com',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(height: 16),
                // Tombol Edit Profile
                ElevatedButton(
                  onPressed: () {
                    // Aksi untuk tombol Edit Profile
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 84, 255, 57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),

          // Garis pembatas
          Divider(thickness: 1, height: 1, color: Colors.grey[300]),

          // Bagian menu: Daftar menu pengaturan dan lainnya
          Expanded(
            child: ListView(
              children: [
                // Menu Settings
                _buildMenuItem(
                  icon: Icons.settings,
                  text: 'Settings',
                  onTap: () {
                    // Aksi untuk Settings
                  },
                ),
                // Menu Billing Details
                _buildMenuItem(
                  icon: Icons.wallet,
                  text: 'Wallet',
                  onTap: () {
                    // Aksi untuk Billing Details
                  },
                ),
                // Menu User Management
                _buildMenuItem(
                  icon: Icons.group,
                  text: 'User Management',
                  onTap: () {
                    // Aksi untuk User Management
                  },
                ),
                // Garis pembatas
                Divider(thickness: 1, height: 1, color: Colors.grey[300]),
                // Menu Information
                _buildMenuItem(
                  icon: Icons.info,
                  text: 'Information',
                  onTap: () {
                    // Aksi untuk Information
                  },
                ),
                // Menu Logout
                _buildMenuItem(
                  icon: Icons.logout,
                  text: 'Logout',
                  textColor: Colors.red,
                  onTap: () {
                    // Aksi untuk Logout
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat item menu
  Widget _buildMenuItem({
    required IconData icon, // Ikon menu
    required String text, // Teks menu
    Color textColor = Colors.black, // Warna teks default hitam
    required VoidCallback onTap, // Fungsi saat menu diklik
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue[50],
        child: Icon(icon, color: const Color.fromARGB(255, 18, 180, 255)),
      ),
      title: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 14),
      ),
      trailing: Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AccountPage(),
  ));
}
