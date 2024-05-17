import 'package:chris_website/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

class MyButtonTheme extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color color;
  const MyButtonTheme(
      {super.key,
      required this.onPressed,
      required this.label,
      this.color = kcPrimaryColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              backgroundColor: MaterialStateProperty.all(color)),
          onPressed: onPressed,
          child: Text(label)),
    );
  }
}

class MyButtonIconTheme extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Widget iconData;
  final Color color;
  const MyButtonIconTheme(
      {super.key,
      required this.onPressed,
      required this.label,
      required this.iconData,
      this.color = kcPrimaryColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton.icon(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              backgroundColor: MaterialStateProperty.all(color)),
          onPressed: onPressed,
          icon: iconData,
          label: Text(label)),
    );
  }
}
