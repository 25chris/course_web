import 'package:chris_website/ui/common/app_colors.dart';
import 'package:chris_website/ui/common/shared_styles.dart';
import 'package:flutter/material.dart';

class WebsiteIcon extends StatelessWidget {
  const WebsiteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "25Chris's Coding",
      textAlign: TextAlign.center,
      style: ktsTitleText.copyWith(fontSize: 35, color: kcBlack),
    );
  }
}
