// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/restaurant/pizza/pizzaOverview.dart';
import 'package:food_delivery/screens/restaurant/pizza/rating.dart';

class AboutPizza extends StatefulWidget {
  const AboutPizza({super.key});

  @override
  State<AboutPizza> createState() => _AboutPizzaState();
}

class _AboutPizzaState extends State<AboutPizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://img.freepik.com/free-photo/slice-crispy-pizza-with-meat-cheese_140725-6974.jpg?size=626&ext=jpg&ga=GA1.1.176796215.1722405523&semt=ais_hybrid',
                fit: BoxFit.cover,
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
            title: const Text('The D Pizza'),
          ),
          // SliverList or SliverFillRemaining for the bottom content
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const Pizzaoverview(),
                                      ),
                                    );
                      },
                      child: Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'The D Pizza',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              CupertinoIcons.greaterthan,
                              color: red,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 10,
                      width: 330,
                      child: const Divider(
                        height: 330,
                        color: lightgrey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>  Rating(),
                                      ),
                                    );
                      },
                      child: Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.star_fill,
                                  color: red,
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text('(4,956 reviews)'),
                              ],
                            ),
                            Icon(
                              CupertinoIcons.greaterthan,
                              color: red,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 10,
                      width: 330,
                      color: white,
                      child: const Divider(
                        height: 330,
                        color: lightgrey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.location_solid,
                                      color: red,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '800m',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Icon(
                                  CupertinoIcons.greaterthan,
                                  color: red,
                                  size: 25,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  const Text(
                                    'Delivery Now',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 3, left: 3),
                                    child: Container(
                                      height: 12,
                                      width: 5,
                                      child: const VerticalDivider(
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  const Text("\$2.0")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 10,
                      width: 330,
                      child: const Divider(
                        height: 330,
                        color: lightgrey,
                      ),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.discount_outlined,
                                  color: red,
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Offers Are Available',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Icon(
                              CupertinoIcons.greaterthan,
                              color: red,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 10,
                      width: 330,
                      child: const Divider(
                        height: 330,
                        color: lightgrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
