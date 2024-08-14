import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

import 'package:food_delivery/screens/restaurant/pizza/PizzaRestauraunts.dart';
import 'package:food_delivery/widgets/customappbarwithtitle.dart';

class PizzaScreen extends StatefulWidget {
  const PizzaScreen({super.key});

  @override
  State<PizzaScreen> createState() => __PizzaScreenStateState();
}

class __PizzaScreenStateState extends State<PizzaScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar01(title: 'Pizza Restaurants'),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTextButton("Restaurants", 0),
              _buildTextButton("Dishes", 1),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage('assets/biriyani.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Veg',
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
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage('assets/icecream.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Cheese',
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
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage('assets/dosa.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Chicken',
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
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          image: DecorationImage(
                            image: AssetImage('assets/thali.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Panner',
                      style: TextStyle(
                        color: black,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                
                
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: const [PizzaRestaraunt(), PizzaRestaraunt()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextButton(String text, int page) {
    return GestureDetector(
      onTap: () {
        _pageController.animateToPage(
          page,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
      child: Column(
        children: [
          AnimatedDefaultTextStyle(
            style: TextStyle(
              fontSize: 20,
              color: _currentPage == page ? Colors.blue : red,
            ),
            duration: const Duration(milliseconds: 300),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 22, color: _currentPage == page ? red : black),
            ),
          ),
          SizedBox(
            height: 10,
            width: 180,
            child: Divider(
              height: 50,
              color: _currentPage == page ? red : lightgrey,
            ),
          )
        ],
      ),
    );
  }
}
