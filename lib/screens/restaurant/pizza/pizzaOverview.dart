import 'package:flutter/material.dart';

import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/restaurant/pizza/map.dart';

import 'package:food_delivery/widgets/customappbarwithtitle.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:readmore/readmore.dart';

class Pizzaoverview extends StatefulWidget {
  const Pizzaoverview({super.key});

  @override
  State<Pizzaoverview> createState() => _PizzaoverviewState();
}

class _PizzaoverviewState extends State<Pizzaoverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar01(
        title: 'The D Pizza',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '4.5',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 0.0),
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
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 0.0),
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
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 0.0),
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
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 0.0),
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
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 0.0),
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
            const SizedBox(
              height: 10,
              width: 330,
              child: Divider(
                height: 330,
                color: lightgrey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Overview',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ReadMoreText(
              "       This pizza is a delight! The crust is perfectly crispy, with a well-seasoned, chewy texture. Topped with fresh, quality ingredients, the tomato sauce is rich and flavorful. Melted cheese adds a creamy touch, while the toppings are generously applied. Overall, it’s a mouthwatering, satisfying pizza experience.",
              trimLines: 2,
              colorClickableText: red,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'See More',
              trimExpandedText: ' Show Less',
              style: TextStyle(fontSize: 16),
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Open Now',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  height: 45,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Monday - Friday',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                Text(
                  '10.00 - 22.00',
                  style: TextStyle(color: red),
                )
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Saturday - Sunday',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '12.00 - 22.00',
                  style: TextStyle(color: red),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
           
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle),
              height: 300,
              width: 325,
              child: const Mapp(),
            )
          ],
        ),
      ),
    );
  }
}
