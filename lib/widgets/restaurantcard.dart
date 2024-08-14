

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class Cardviewrest extends StatelessWidget {
  final String img;
  final String restaurantName;
  final String sub1;
  final String sub2;
  final String sub3;
  final double distance;
  final double rating;
  final String reviews;
   final bool veg;

  const Cardviewrest(
      {super.key,
      required this.img,
      required this.restaurantName,
      required this.sub1,
      required this.sub2,
      required this.sub3,
      required this.distance,
      required this.rating,
      required this.reviews, required this.veg});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 110,
        width: 330,
        decoration: const BoxDecoration(
          color: lightgrey,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(31, 0, 0, 0),
              offset: Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
          borderRadius: BorderRadius.all(Radius.circular(13)),
        ),
        child: Row(
          children: [
           const SizedBox(
              width: 8,
            ),
            Container(
              height: 93,
              width: 93,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 20,
                  width: 205,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(
                                Icons.circle_outlined,
                                color:veg ? Colors.green : Colors.red,
                                size: 16,
                              ),
                              Icon(Icons.circle, color: veg ? Colors.green : Colors.red, size: 7),
                            ],
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            restaurantName,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      FavoriteButton(
                        valueChanged: () {},
                        iconSize: 26,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 30,
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        sub1,
                        style: const TextStyle(fontSize: 13, color: grey),
                      ),
                      Container(
                        height: 4,
                        width: 4,
                        decoration: const BoxDecoration(
                            color: red, shape: BoxShape.circle),
                      ),
                      Text(
                        sub2,
                        style: const TextStyle(fontSize: 13, color: grey),
                      ),
                      Container(
                        height: 4,
                        width: 4,
                        decoration: const BoxDecoration(
                            color: red, shape: BoxShape.circle),
                      ),
                      Text(
                        sub3,
                        style: const TextStyle(fontSize: 13, color: grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              distance.toString(),
                              style: const TextStyle(fontSize: 12, color: grey),
                            ),
                            const  Text(
                        'Km',
                        style: const TextStyle(fontSize: 12, color: grey),
                      ),
                          ],
                        ),
                      ),
                    
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: red,
                            size: 16,
                          ),
                          Text(
                            rating.toString(),
                            style: const TextStyle(fontSize: 12, color: grey),
                          ),
                          Text(
                            reviews,
                            style: const TextStyle(fontSize: 12, color: grey),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


