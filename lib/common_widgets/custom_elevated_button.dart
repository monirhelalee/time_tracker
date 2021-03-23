import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    this.child,
    this.primaryColor,
    this.onPrimaryColor,
    this.onPressed,
    this.height:50.0});

  final Widget child;
  final double height;
  final Color primaryColor;
  final Color onPrimaryColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        child: child,
        style: ElevatedButton.styleFrom(
          primary: primaryColor, // background
          onPrimary: onPrimaryColor, // foreground
        ),
        onPressed: onPressed,
      ),
    );
  }
}
