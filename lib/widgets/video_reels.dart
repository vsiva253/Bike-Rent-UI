import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoReels extends StatefulWidget {
  final bool showHeart;
  final bool showPrice;
  final String title;

  const VideoReels({
    Key? key,
    required this.showHeart,
    required this.showPrice,
    required this.title,
  }) : super(key: key);

  @override
  _VideoReelsState createState() => _VideoReelsState();
}

class _VideoReelsState extends State<VideoReels> {
  List<bool> selectedList = List.generate(5, (index) => false);
  late List<ChewieController> chewieControllers;

  @override
  void initState() {
    super.initState();

    // Initialize Chewie controllers
    chewieControllers = List.generate(
      5,
      (index) => ChewieController(
        videoPlayerController: VideoPlayerController.asset(
          'assets/video.mp4', // Replace with your video asset names
        ),
        autoPlay: true,
        looping: true,
        placeholder: Center(
          child: CircularProgressIndicator(),
        ),
        allowMuting: false,
        showControls: false,
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of Chewie controllers
    chewieControllers.forEach((controller) {
      controller.videoPlayerController.dispose();
      controller.dispose();
    });
    super.dispose();
  }

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
            itemCount: 3, // Replace with the actual number of containers
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    width: 156.04,
                    height: 185,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    child: Stack(
                      children: [
                        Chewie(
                          controller: chewieControllers[index],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (widget.showHeart)
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 4, bottom: 4, left: 4),
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
