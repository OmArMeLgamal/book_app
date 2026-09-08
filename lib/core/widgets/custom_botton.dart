import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.backgroundColor, required this.textColor,  this.borderRadius});
final Color backgroundColor;
final Color textColor;
final BorderRadius? borderRadius;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        // if i send null to borderRadius it will use the default value of 16, otherwise it will use the value passed to the constructor
        shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(16)),
        //  minimumSize: const Size(150, 50),
      ),
      child: Text(
        '19.99 €',
        style: TextStyle(fontSize: 16, color:textColor, fontWeight: FontWeight.w600),
      ),
    );
  }
}
