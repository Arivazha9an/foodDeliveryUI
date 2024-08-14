import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final String title;
  final Color background;
  final Color textColor;
  final double fontSize;
  final VoidCallback onTap;
  final bool isLoading;
  final Icon icondat;
  const CustomButton(
      {super.key,
      this.width,
      required this.title,
      required this.background,
      required this.textColor,
      required this.fontSize,
      required this.onTap,
      this.isLoading = false, required this.icondat});

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          )
        : InkWell(
            onTap: onTap,
            child: Container(
              
              width: width,
              height: 46,
              decoration: BoxDecoration(
                color: background,
                border: Border.all(color: black),
                
                borderRadius: BorderRadius.circular(3),
              ),
              child: Row(
                children: [
                 ImageIcon(icondat as ImageProvider<Object>?),
                  Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: fontSize,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
