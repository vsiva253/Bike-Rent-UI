import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _buildCardRow(
            'Buy a vehicle',
            Color(0xFFF8AA3B),
            'Book a Ride',
            Color(0xFF194B3F),
            'assets/sco.png',
            'assets/au.png',
          ),
          SizedBox(height: 10),
          _buildCardRow('Charging Stations', Color(0xFF12A89D), 'Products',
              Color(0xFFF0831F), 'assets/ecar.png', 'assets/dro.png'),
        ],
      ),
    );
  }

  Widget _buildCardRow(String title1, Color color1, String title2, Color color2,
      String img1, String img2) {
    return Row(
      children: [
        Expanded(
          child: _buildCard(title1, color1, img1),
        ),
        Expanded(
          child: _buildCard(title2, color2, img2),
        ),
      ],
    );
  }

  Widget _buildCard(String title, Color color, String img) {
    return SizedBox(
      height: 72,
      // width: 155, // Updated width to 155px
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // Added border-radius: 8px
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 2.0), // Modified padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              Align(alignment: Alignment.bottomRight, child: Image.asset(img))
            ],
          ),
        ),
      ),
    );
  }
}
