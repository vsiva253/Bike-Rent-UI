import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:task24/widgets/bikes.dart';
import 'package:task24/widgets/category_cards.dart';
import 'package:task24/widgets/custom_appbar.dart';
import 'package:task24/widgets/e_vehicles_grid.dart';
import 'package:task24/widgets/grid.dart';
import 'package:task24/widgets/offers_cards.dart';
import 'package:task24/widgets/products.dart';
import 'package:task24/widgets/video_reels.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        activeColor: Color(0xff12A89D),
        color: Colors.grey,
        curveSize: 0,
        cornerRadius: 0,
        height: 70,
        style: TabStyle.fixedCircle,
        items: [
          TabItem(icon: Icons.home_outlined, title: 'Home'),
          TabItem(icon: Icons.home_max_outlined, title: 'Home'),
          TabItem(icon: Icons.lens_blur_outlined, title: 'Profile'),
          TabItem(icon: Icons.favorite_outline, title: 'Favorites'),
          TabItem(icon: Icons.person_2_outlined, title: 'Profile'),
        ],
        initialActiveIndex: 2,
        onTap: (int index) {
          // Handle tab item taps
        },
      ),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              CategoryCards(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Offers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              OffersCards(),
              BikesCards(
                showHeart: true,
                showPrice: true,
                title: 'Bikes',
              ),
              ProductCards(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'eVehicles',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElectricVehiclesGrid(),
              BikesCards(
                showHeart: true,
                showPrice: true,
                title: 'Products',
              ),
              VideoReels(showHeart: false, showPrice: false, title: 'Reels'),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Gallery',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Grid(),
            ],
          ),
        ),
      ),
    );
  }
}
