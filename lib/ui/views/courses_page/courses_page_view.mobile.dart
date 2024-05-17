import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'courses_page_viewmodel.dart';

class CoursesPageViewMobile extends ViewModelWidget<CoursesPageViewModel> {
  const CoursesPageViewMobile({super.key});

  @override
  Widget build(BuildContext context, CoursesPageViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, MOBILE UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
