import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  final Function(Map<String, String>) onAddProduct;

  AddProductPage({required this.onAddProduct});

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final TextEditingController nameController = TextEditingController();
  String selectedImage = '';

  final List<String> availableImages = [
    'images/botol1_botol_aqua.jpg',
    'images/botol2_botol_le_minerale.jpg',
    'images/botol3_botol_kaleng_nescafe.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Product"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Product Name'),
            ),
            SizedBox(height: 16),
            DropdownButton<String>(
              hint: Text("Select Image"),
              value: selectedImage.isEmpty ? null : selectedImage,
              onChanged: (value) {
                setState(() {
                  selectedImage = value!;
                });
              },
              items: availableImages.map((image) {
                return DropdownMenuItem(
                  value: image,
                  child: Text(image.split('/').last), // Show file name only
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty && selectedImage.isNotEmpty) {
                  widget.onAddProduct({
                    'name': nameController.text,
                    'image': selectedImage,
                  });
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Please fill all fields'),
                  ));
                }
              },
              child: Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}
