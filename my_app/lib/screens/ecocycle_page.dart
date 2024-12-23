import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';  // Untuk encoding dan decoding data produk
import 'addproduct.dart';

class EcoCyclePage extends StatefulWidget {
  const EcoCyclePage({super.key});
  
  @override
  _EcoCyclePageState createState() => _EcoCyclePageState();
}

class _EcoCyclePageState extends State<EcoCyclePage> {
  List<Map<String, String>> products = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();  // Memuat produk saat halaman pertama kali dibuka
  }

  // Fungsi untuk memuat produk dari SharedPreferences
  _loadProducts() async {
    final prefs = await SharedPreferences.getInstance();
    final String? productListString = prefs.getString('products');
    if (productListString != null) {
      List<Map<String, String>> loadedProducts = List<Map<String, String>>.from(
        json.decode(productListString).map((item) => Map<String, String>.from(item))
      );
      setState(() {
        products = loadedProducts;
      });
    }
  }

  // Fungsi untuk menyimpan produk ke SharedPreferences
  _saveProducts() async {
    final prefs = await SharedPreferences.getInstance();
    String productListString = json.encode(products);
    prefs.setString('products', productListString);
  }

  // Fungsi untuk menambah produk
  void addProduct(Map<String, String> newProduct) {
    setState(() {
      products.add(newProduct);
    });
    _saveProducts();  // Simpan data produk setelah ditambah
  }

  // Fungsi untuk menghapus produk
  void deleteProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
    _saveProducts();  // Simpan data produk setelah dihapus
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EcoCycle"),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(product['image']!),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  product['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                // Tambahkan tombol delete
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    deleteProduct(index);  // Menghapus produk berdasarkan index
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddProductPage(onAddProduct: addProduct),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
