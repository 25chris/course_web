import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'course_detail_viewmodel.dart';

class CourseDetailViewMobile extends ViewModelWidget<CourseDetailViewModel> {
  const CourseDetailViewMobile({super.key});

  @override
  Widget build(BuildContext context, CourseDetailViewModel viewModel) {
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
