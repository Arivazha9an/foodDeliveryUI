// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:flutter/material.dart';

// class Corousel extends StatefulWidget {
//   const Corousel({super.key});

//   @override
//   State<Corousel> createState() => _CorouselState();
// }

// class _CorouselState extends State<Corousel>  {
 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             CarouselSlider(
//               options: CarouselOptions(
//                 autoPlay: true,
//                 aspectRatio: 2.0,
//                 enlargeCenterPage: true,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     currentIndex = index;
//                   });
//                 },
//               ),
//               items: items,
//             ),
//             DotsIndicator(
//               dotsCount: items.length,
//               position: currentIndex.toInt(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }