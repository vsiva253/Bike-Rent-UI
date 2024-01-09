import 'package:flutter/material.dart';

class BikesCards extends StatefulWidget {
  final bool showHeart;
  final bool showPrice;
  final String title;

  const BikesCards({
    Key? key,
    required this.showHeart,
    required this.showPrice,
    required this.title,
  }) : super(key: key);

  @override
  _BikesCardsState createState() => _BikesCardsState();
}

class _BikesCardsState extends State<BikesCards> {
  List<bool> selectedList = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
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
        Container(
          height: 229.07,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5, // Replace with the actual number of containers
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    width: 156.04,
                    height: 185,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bike.png'),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(1), BlendMode.dstATop),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Add the name
                        // Text(
                        //   'Bike $index',
                        //   style: const TextStyle(
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        if (widget.showHeart)
                          Padding(
                            padding: const EdgeInsets.only(right: 4, bottom: 4),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                width: 37.5,
                                height: 37.5,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedList[index]
                                      ? Color(0xFF12A89D)
                                      : Colors.white,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedList[index] =
                                          !selectedList[index];
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: selectedList[index]
                                        ? Colors.white
                                        : Color(0xFF12A89D),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Text(
                    'Bike $index',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Add the price information outside the container
                  if (widget.showPrice)
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$200', // Replace with the actual discounted price
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '\$250', // Replace with the actual original price
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
