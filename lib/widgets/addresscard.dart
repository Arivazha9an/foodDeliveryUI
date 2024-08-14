import 'package:flutter/material.dart';

import 'package:food_delivery/constants.dart';

class Addresscard extends StatelessWidget {
  final String  place;
  final String address;
  const Addresscard({
    super.key,
    required this.place,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 330,
              decoration: BoxDecoration(
                  color: lightgrey, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                color: red,
                                borderRadius: BorderRadius.circular(40)),
                            child: const Icon(
                              Icons.location_on_outlined,
                              color: white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                       Column(
                        children: [
                          Text(
                            place,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 160,
                      ),
                      const Icon(
                        Icons.edit_square,
                        color: red,
                      )
                    ],
                  ),
                   Row(
                    children: [
                      const SizedBox(
                        width: 55,
                      ),
                      Text(address)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      );
    
  
  }
}
