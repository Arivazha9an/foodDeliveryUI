

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';


class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: BottomAppBar(
        color: white,
        shadowColor: black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            navItem(
              CupertinoIcons.home,
              pageIndex == 0,
               onTap: () => onTap(0),
            ),
            navItem(
              CupertinoIcons.heart,
              pageIndex == 1,
              onTap: () => onTap(1),
            ),
            const SizedBox(width: 80),
            navItem(
              CupertinoIcons.doc,
              pageIndex == 2,
              onTap: () => onTap(2),
            ),
            navItem(
              CupertinoIcons.person,
              pageIndex == 3,
              onTap: () => onTap(3),
            ),
          ],

          
        ),
      ),
    );
  }

  Widget navItem(IconData icon, bool selected, {Function()? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Icon(
              icon,
              color: selected ? red : grey,
            ),
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selected ? red : white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
