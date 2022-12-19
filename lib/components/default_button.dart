import 'package:flutter/material.dart';

import '../constants.dart';
import '../config_screen.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
