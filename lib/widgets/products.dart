import 'package:flutter/material.dart';

class ProductCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Products',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // Handle "View All" button press
              },
              child: const Text(
                'View All',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 0),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildProductContainer(0),
            _buildProductContainer(1),
            _buildProductContainer(2),
            _buildProductContainer(3),
          ],
        ),
      ],
    );
  }

  Widget _buildProductContainer(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            width: double.maxFinite,
            height: 75,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/products.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(1), BlendMode.dstATop),
              ),
              borderRadius: BorderRadius.circular(6),
              // color: Colors.grey.withOpacity(0.5),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Product $index',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
