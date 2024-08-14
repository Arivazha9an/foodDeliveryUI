import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/Profile/address.dart';
import 'package:food_delivery/Profile/editprofile.dart';
import 'package:food_delivery/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          width: 25,
          child: Center(
            child: IconButton(
              icon: const Icon(
                Icons.food_bank_rounded,
                size: 35,
                color: red,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        title: const Center(child: Text('Profile')),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 145,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(204, 61, 79, 88),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 57,
                        backgroundColor: red,
                        child: CircleAvatar(
                          radius: 54,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1597466765990-64ad1c35dafc'),
                        ),
                      ),
                      Positioned(
                        top: 77,
                        bottom: 13,
                        left: 90,
                        right: 1,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 1, left: 3, right: 8),
                            child: InkWell(
                              child: const Icon(
                                CupertinoIcons.pencil,
                                size: 25,
                              ),
                              onTap: () {
                                 Navigator.of(context).push(
                            MaterialPageRoute(
                             builder: (context) => const EditProfile(),
                            ),
                           );
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'John Quail',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: white),
                      ),
                      const Text(
                        '+91 00000 00000',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: white),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'View Activity',
                                style: TextStyle(color: red),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: red,
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              // Navigator.of(context).push(
              //               MaterialPageRoute(
              //                 builder: (context) => const Pizzaoverview(),
              //               ),
              //             );
            },
            child: Container(
              height: 40,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star_border_rounded,
                        color: black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My Reviews',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: black,
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
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
          Navigator.of(context).push(
                            MaterialPageRoute(
                             builder: (context) => const Address(),
                            ),
                           );
            },
            child: Container(
              height: 40,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 88,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: black,
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
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              // Navigator.of(context).push(
              //               MaterialPageRoute(
              //                 builder: (context) => const Pizzaoverview(),
              //               ),
              //             );
            },
            child: Container(
              height: 40,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.notifications_none_rounded,
                        color: black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 44,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: black,
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
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              // Navigator.of(context).push(
              //               MaterialPageRoute(
              //                 builder: (context) => const Pizzaoverview(),
              //               ),
              //             );
            },
            child: Container(
              height: 40,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.logout_rounded,
                        color: red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: red),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 77,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: black,
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
    );
  }
}
