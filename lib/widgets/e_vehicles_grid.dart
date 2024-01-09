import 'package:flutter/material.dart';

class ElectricVehiclesGrid extends StatelessWidget {
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
    'assets/bus.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150 *
          (names.length / 2)
              .ceil()
              .toDouble(), // Set the height based on the number of rows
      child: ListView.builder(
        itemCount: (names.length / 2).ceil(), // Calculate the number of rows
        itemBuilder: (BuildContext context, int rowIndex) {
          int startIndex = rowIndex * 2;
          int endIndex = (rowIndex + 1) * 2;
          endIndex = endIndex > names.length ? names.length : endIndex;

          return Container(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: names.sublist(startIndex, endIndex).map((name) {
                int index =
                    names.indexOf(name); // Get the index of the current name
                return _buildCard(
                    name, images[index]); // Pass the corresponding image
              }).toList(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCard(String name, String img) {
    return Expanded(
      child: Container(
        height: 150,
        margin: const EdgeInsets.only(left: 0, right: 8, top: 2, bottom: 8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(1), BlendMode.dstATop),
          ),
          borderRadius: BorderRadius.circular(8),
          // color: Colors.grey
          //     .withOpacity(0.6), // You can change the color as needed
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
              color: Colors.white, // You can change the text color as needed
            ),
          ),
        ),
      ),
    );
  }
}
