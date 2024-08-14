import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/widgets/customappbarwithtitle.dart';
import 'package:food_delivery/widgets/review.dart';

class Rating extends StatefulWidget {
  Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  int _selectedChoiceChip = -1;
  
  final List<Map<String, dynamic>> localData = [
    {
      'img':
          'https://en.wikipedia.org/wiki/File:Brian_Lara_at_2012_Mumbai_Marathon_pre_bash.jpg',
      'uName': 'Brian Laura',
      'review':
          '   Pizza Hut offers a wide variety of pizzas with different crust options, but the quality can vary by location. While the toppings are generally fresh and the menu is diverse, some customers find the taste inconsistent and the prices slightly high. Delivery service is convenient, though occasionally delayed.',
      'days': 10,
      'rating': 4.5,
    },
    {
      'img':
          'https://staticg.sportskeeda.com/editor/2024/01/cb24e-17047703931055-1920.jpg',
      'uName': 'William Butchar',
      'review':
          '   Pizza Hut offers a wide variety of pizzas with different crust options, but the quality can vary by location. While t .',
      'days': 10,
      'rating': 4.0,
    },
    {
      'img':
          'https://images.squarespace-cdn.com/content/v1/5fbc4a62c2150e62cfcb09aa/fc8344cd-df81-4f2e-9b84-3eb6f99bd533/20220218-oppenheimer-nolan-quaid.jpg?format=1500w',
      'uName': 'Hughie',
      'review':
          '   Pizza Hut offers a wide variety of pizzas with different  slightly high. Delivery service is convenient, though occasionally delayed.',
      'days': 10,
      'rating': 3.5,
    },
    {
      'img':
          'https://stock.adobe.com/in/images/happy-businessman-isolated-handsome-man-standing-with-crossed-arms/142201762',
      'uName': 'Victoria Neumon',
      'review':
          '   Pizza Hut offers a wide on. While the toppinhe menu is diverse, some customers find the taste inconsistent and the prices slightly high..',
      'days': 10,
      'rating': 4.8,
    },
    {
      'img':
          'https://stock.adobe.com/in/images/modern-businessman-in-deep-blue-shirt-standing-with-crossed-arms-isolated-on-gray-background/242000451',
      'uName': 'Ashley',
      'review':
          '   Pizza Hut offers a wide variety of pizse, some customers find the tast the prices slightly high. Delivery service is convenient, though  .',
      'days': 10,
      'rating': 5.0,
    },
  ];

  List<bool> _selectedFilterChips = [false, false, false, false, false, false];

  final List<String> chipNames = ['All', '5', '4', '3', '2', '1'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar01(title: 'Rating & Reviews'),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '4.5',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RatingBar.readOnly(
                    size: 20,
                    filledIcon: Icons.star,
                    isHalfAllowed: true,
                    emptyIcon: Icons.star_border,
                    halfFilledIcon: Icons.star_half,
                    halfFilledColor: red,
                    filledColor: red,
                    initialRating: 4.5,
                    maxRating: 5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('(4,959 reviews)'),
                ],
              ),
              Container(
                height: 120,
                width: 10,
                child: const VerticalDivider(
                  color: lightgrey,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        '5',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 0.0),
                          thumbColor: Colors.transparent,
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 0.0),
                          trackHeight: 4.0,
                          disabledActiveTrackColor: red,
                          disabledInactiveTrackColor: lightgrey,
                        ),
                        child: const Slider(
                          value: 4.5, // Set your desired value
                          onChanged: null, // Disables user interaction
                          min: 0.0,
                          max: 5.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '4',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 0.0),
                          thumbColor: Colors.transparent,
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 0.0),
                          trackHeight: 4.0,
                          disabledActiveTrackColor: red,
                          disabledInactiveTrackColor: lightgrey,
                        ),
                        child: const Slider(
                          value: 4.0, // Set your desired value
                          onChanged: null, // Disables user interaction
                          min: 0.0,
                          max: 5.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '3',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 0.0),
                          thumbColor: Colors.transparent,
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 0.0),
                          trackHeight: 4.0,
                          disabledActiveTrackColor: red,
                          disabledInactiveTrackColor: lightgrey,
                        ),
                        child: const Slider(
                          value: 2.2, // Set your desired value
                          onChanged: null, // Disables user interaction
                          min: 0.0,
                          max: 5.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '2',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 0.0),
                          thumbColor: Colors.transparent,
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 0.0),
                          trackHeight: 4.0,
                          disabledActiveTrackColor: red,
                          disabledInactiveTrackColor: lightgrey,
                        ),
                        child: const Slider(
                          value: 2.5, // Set your desired value
                          onChanged: null, // Disables user interaction
                          min: 0.0,
                          max: 5.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '1',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 0.0),
                          thumbColor: Colors.transparent,
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 0.0),
                          trackHeight: 4.0,
                          disabledActiveTrackColor: red,
                          disabledInactiveTrackColor: lightgrey,
                        ),
                        child: const Slider(
                          value: 1.5, // Set your desired value
                          onChanged: null, // Disables user interaction
                          min: 0.0,
                          max: 5.0,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Wrap(
                  spacing: 10.0,
                  children:
                      List<Widget>.generate(chipNames.length, (int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedChoiceChip = index;
                        });
                      },
                      child: Container(
                        child: Chip(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                chipNames[index],
                                style: TextStyle(
                                  color: _selectedChoiceChip == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                              if (index > 0) ...[
                                const SizedBox(width: 4),
                                Icon(
                                  Icons.star_border_rounded,
                                  size: 16,
                                  color: _selectedChoiceChip == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ]
                            ],
                          ),
                          backgroundColor: _selectedChoiceChip == index
                              ? red
                              : Colors.grey.shade200,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: localData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Review(
                      img: localData[index]['img'],
                      uName: localData[index]['uName'],
                      review: localData[index]['review'],
                      days: localData[index]['days'],
                      rating: localData[index]['rating'],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Container(
                      height: 10,
                      width: 340,
                      child: Divider(
                        color: lightgrey,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
