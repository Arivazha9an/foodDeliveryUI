import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isGoBack;
  final String title;
  const CustomAppBar({
    Key? key,
    this.isGoBack = true,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isGoBack
          ? Container(
              margin: const EdgeInsets.only(left: 10),
              width: 25,
              child: Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            )
          : Container(),
      title: Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Text(
          title,
          style: const TextStyle(
            color: black,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
