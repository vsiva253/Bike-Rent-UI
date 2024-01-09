import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  final List<String> names = [
    'Cars',
    'Cycles',
    'Bikes',
    'Auto',
    'Trucks',
    'Bus'
  ];
  final List<String> images = [
    'assets/cars.png',
    'assets/cyc.png',
    'assets/bike.png',
    'assets/auto.png',
    'assets/tract.png',
    'assets/bus.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150 * 3, // Set the total height of the grid
      child: Column(
        children: [
          _buildRow(100, 200), // First row with alternating heights
          SizedBox(height: 8),
          _buildRow(200, 100), // Second row with alternating heights
        ],
      ),
    );
  }

  Widget _buildRow(double height1, double height2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildCard(names[0], images[0], height1),
        _buildCard(names[1], images[1], height2),
      ],
    );
  }

  Widget _buildCard(String name, String img, double height) {
    return Expanded(
      child: Container(
        height: height,
        margin: const EdgeInsets.only(left: 0, right: 8, top: 2, bottom: 8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(1),
              BlendMode.dstATop,
            ),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              shadows: [
                Shadow(
                  blurRadius: 15.0,
                  color: Colors.black,
                  offset: Offset(5.0, 5.0),
                ),
              ],
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
