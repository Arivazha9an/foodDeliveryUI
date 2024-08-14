import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/restaurant/pizza/pizza.dart';
import 'package:food_delivery/screens/restaurant/restaurant.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final items = [
    Image.asset('assets/corousel1.jpg'),
    Image.asset('assets/courosel2.jpg')
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(9.0),
              child: Row(
                children: [
                  Text('Current location'),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.pin_drop,
                  color: red,
                ),
                Text(
                  "2602,Robert ST'mos....",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 130,
                ),
                Icon(Icons.notifications_outlined)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 45,
              width: 300,
              child: TextFormField(
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  fontSize: 14,
                  color: black,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
                onTap: () {},
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: lightgrey,
                    hintText: 'search Dishes',
                    hintStyle: const TextStyle(color: grey),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 18,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: lightgrey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: lightgrey)),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            ),
            Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(1)),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 16 / 10,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                    items: items,
                  ),
                ),
                DotsIndicator(
                  dotsCount: items.length,
                  position: currentIndex.toInt(),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PizzaScreen()),
                                );
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/pizza.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Pizza',
                              style: TextStyle(
                                color: black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>),
                                // );
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/burger.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Burger',
                              style: TextStyle(
                                color: black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>),
                                // );
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/sandwich.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Sandwich',
                              style: TextStyle(
                                color: black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>),
                                // );
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/cake.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Cake',
                              style: TextStyle(
                                color: black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>),
                                // );
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/biriyani.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Biriyani',
                              style: TextStyle(
                                color: black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>),
                                // );
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/icecream.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Ice Cream',
                              style: TextStyle(
                                color: black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>),
                                // );
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/dosa.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Dosa',
                              style: TextStyle(
                                color: black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                       const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>),
                                // );
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/thali.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Thali',
                              style: TextStyle(
                                color: black,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '  All Restaurants',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: (){
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => const Restaurant(
                        
                      ),)
                    );
                  },
                  child: const Text(
                    'See All  ',
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500, color: red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
