import 'package:flutter/material.dart';
import 'package:shopping/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        title: Text(product.name),
        subtitle: Text("Price: \$${product.price.toStringAsFixed(2)}"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Implement add to cart logic
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                // Implement add to favorites logic
              },
            ),
          ],
        ),
      ),
    );
  }
}
