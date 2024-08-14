import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/widgets/addresscard.dart';
import 'package:food_delivery/widgets/customappbar.dart';
import 'package:food_delivery/widgets/custombutton.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final List<Map<String, dynamic>> localData = [
    {'place': 'HOME', 'address': 'Abcs,dsadhdd nagar,daudd'},
    {'place': 'OFFICE', 'address': 'Abcs,dsadhdd nagar,daudd'},
    {'place': 'VILLA', 'address': 'Abcs,dsadhdd nagar,daudd'},
    {'place': 'PARENTS HOUSE', 'address': 'Abcs,dsadhdd nagar,daudd'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Address'),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: localData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 80.0),
                child: Column(
                  children: [
                    Addresscard(
                      place: localData[index]['place'],
                      address: localData[index]['address'],
                    ),
                    const SizedBox(
                      height: 2,
                    )
                  ],
                ),
              );
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: CustomTextButton(
                    title: 'Add New Address',
                    background: red,
                    textColor: white,
                    fontSize: 17,
                    onTap: () {})),
          ),
        ],
      ),
    );
  }
}
