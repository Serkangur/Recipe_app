import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomTextfield extends StatelessWidget {
  final IconData icon;
  final bool obsecureText;
  final String hintText;

  const CustomTextfield(
      {Key? key,
      required this.icon,
      required this.hintText,
      required this.obsecureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecureText,
      style: TextStyle(
        color: Constants.blackColor,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          icon,
          color: Constants.blackColor.withOpacity(.3),
        ),
        hintText: hintText,
      ),
      cursorColor: Constants.blackColor.withOpacity(.5),
    );
  }
}
