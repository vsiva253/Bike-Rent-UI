import 'package:flutter/material.dart';

class OffersCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final containerWidth = 319.0;
    final containerHeight = 75.0;
    final containerMargin = EdgeInsets.only(top: 16, left: 1);
    final borderRadius = BorderRadius.circular(6);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: containerWidth,
                height: containerHeight,
                margin: containerMargin,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/offer.png'),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(1), BlendMode.dstATop),

                    // color: Colors.grey.withOpacity(0.6),
                  ),
                  borderRadius: borderRadius,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'UPTO 30%OFF',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'on products',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10), // Add some spacing between the containers
              Container(
                width: containerWidth,
                height: containerHeight,
                margin: containerMargin,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/offer.png'),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(1), BlendMode.dstATop),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: borderRadius,
                  color: Colors.grey.withOpacity(0.6),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'UPTO 30%OFF',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'on products',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
