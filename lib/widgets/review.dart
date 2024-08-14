import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class Review extends StatelessWidget {
  final String img;
  final String uName;
  final String review;
  final int days;
  final double rating;

  const Review({
    super.key,
    required this.img,
    required this.uName,
    required this.review,
    required this.days,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(img),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              uName,
              style: const TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold, color: black),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10, top: 5),
          child: Text(
            review,
            style: const TextStyle(fontSize: 13),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  RatingBar.readOnly(
                    size: 17,
                    filledIcon: Icons.star,
                    isHalfAllowed: true,
                    emptyIcon: Icons.star_border,
                    halfFilledIcon: Icons.star_half,
                    halfFilledColor: red,
                    filledColor: red,
                    initialRating: rating,
                    maxRating: 5,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('$days days ago')
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.telegram_rounded,
                    color: red,
                  ),
                  Text('Share'),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
