import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/restaurant/pizza/about.dart';

import 'package:food_delivery/widgets/restaurantcard.dart';

class PizzaRestaraunt extends StatefulWidget {
  const PizzaRestaraunt({super.key});

  @override
  State<PizzaRestaraunt> createState() => _PizzaRestarauntState();
}

class _PizzaRestarauntState extends State<PizzaRestaraunt> {
  String? _selectedValue;
  final List<String> _options = ['Nearest', 'Rating', 'Option 3'];
  final List<Map<String, dynamic>> localData = [
    {
      'img': 'assets/pizza.jpeg',
      'restaurantName': 'Pizza Hut',
      'sub1': 'Burger',
      'sub2': 'Fast Food',
      'sub3': 'Coca-Cola',
      'distance': 8.0,
      'rating': 4.5,
      'reviews': '(4,259 reviews)',
      'veg': false,
    },
    {
      'img': 'assets/pizza.jpeg',
      'restaurantName': 'Luighi pizza',
      'sub1': 'Pure veg',
      'sub2': 'Sweets',
      'sub3': 'Snacks',
      'distance': 16.5,
      'rating': 4.9,
      'reviews': '(4,287 reviews)',
      'veg': true,
    },
    {
      'img': 'assets/pizza.jpeg',
      'restaurantName': 'The D Pizza',
      'sub1': 'Pizza',
      'sub2': 'Fast Food',
      'sub3': 'Coca-Cola',
      'distance': 18.8,
      'rating': 4.5,
      'reviews': '(4,969 reviews)',
      'veg': false,
    },
    {
      'img': 'assets/pizza.jpeg',
      'restaurantName': 'Hostston Pizzeria',
      'sub1': 'Pure Veg',
      'sub2': 'Chinese',
      'sub3': 'Bhajii',
      'distance': 1.6,
      'rating': 4.9,
      'reviews': '(4,959 reviews)',
      'veg': true,
    },
    {
      'img': 'assets/pizza.jpeg',
      'restaurantName': 'The Pie',
      'sub1': 'Burger',
      'sub2': 'Fast Food',
      'sub3': 'Aalupuri',
      'distance': 1.57,
      'rating': 4.5,
      'reviews': '(4,259 reviews)',
      'veg': false,
    },
  ];
  void sortCardsByRating() {
    setState(() {
      localData.sort((a, b) => b['rating'].compareTo(a['rating']));
    });
  }

  void sortCardsByDistance() {
    setState(() {
      localData.sort((a, b) => a['distance'].compareTo(b['distance']));
    });
  }

  VoidCallback? _getFunctionForOption(String option) {
    switch (option) {
      case 'Nearest':
        return sortCardsByDistance;
      case 'Rating':
        return sortCardsByRating;
      // case 'Option 3':
      // return sortCardsByPrice;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          
          Row(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DropdownButton<String>(
                      value: null, // Ensures "Sort" is always shown
                      hint: const Text('Sort'), // Text that is always displayed
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            _selectedValue = newValue;
                          });
                          // Call the function mapped to the selected option
                          final function = _getFunctionForOption(newValue);
                          function?.call();
                        }
                      },
                      items: _options
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 20),
                    _selectedValue != null
                        ? InputChip(
                            backgroundColor: red,
                            deleteIcon: const Icon(
                              Icons.close_rounded,
                              color: white,
                              size: 17,
                            ),
                            label: Text(
                              _selectedValue!,
                              style: const TextStyle(color: white),
                            ),
                            onDeleted: () {
                              setState(() {
                                _selectedValue = null;
                              });
                            },
                          )
                        : Container(),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: localData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: (){
                         Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const AboutPizza(),
                                      ),
                                    );
                      },
                      child: Cardviewrest(
                        img: localData[index]['img'],
                        restaurantName: localData[index]['restaurantName'],
                        sub1: localData[index]['sub1'],
                        sub2: localData[index]['sub2'],
                        sub3: localData[index]['sub3'],
                        distance: localData[index]['distance'],
                        rating: localData[index]['rating'],
                        reviews: localData[index]['reviews'],
                        veg: localData[index]['veg'],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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