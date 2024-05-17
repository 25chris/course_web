import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'course_detail_viewmodel.dart';

class CourseDetailViewTablet extends ViewModelWidget<CourseDetailViewModel> {
  const CourseDetailViewTablet({super.key});

  @override
  Widget build(BuildContext context, CourseDetailViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, TABLET UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
