import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chips = products.where((product) => product.category == 'Chips').toList();
    final drinks = products.where((product) => product.category == 'Soft Drinks').toList();

    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: ListView(
        children: [
          categorySection('Chips', chips),
          categorySection('Soft Drinks', drinks),
        ],
      ),
    );
  }

  Widget categorySection(String title, List<Product> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ProductItem(product: items[index]);
            },
          ),
        ),
      ],
    );
  }
}
