import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({this.child, this.primaryColor,this.onPrimaryColor,this.onPressed});
  final Widget child;
  final Color primaryColor;
  final Color onPrimaryColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      style: ElevatedButton.styleFrom(
        primary: primaryColor, // background
        onPrimary: onPrimaryColor, // foreground
      ),
      onPressed: onPressed,
    );
  }
}
