import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_fultter_course/common_widgets/custom_elevated_button.dart';

class SignInButton extends CustomElevatedButton{
  SignInButton({
    String text,
    Color pColor,
    Color opColor,
    //Color textColor,
    VoidCallback onPressed,
}) : super(
    child: Text(text,
    style: TextStyle(//color: textColor,
        fontSize: 15.0),),
    onPrimaryColor:opColor,
    primaryColor: pColor,
    onPressed: onPressed
  );
}