import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'course_detail_view.desktop.dart';
import 'course_detail_view.tablet.dart';
import 'course_detail_view.mobile.dart';
import 'course_detail_viewmodel.dart';

class CourseDetailView extends StackedView<CourseDetailViewModel> {
  final String myPath;
  const CourseDetailView({super.key, @pathParam required this.myPath});

  @override
  Widget builder(
    BuildContext context,
    CourseDetailViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const CourseDetailViewMobile(),
      tablet: (_) => const CourseDetailViewTablet(),
      desktop: (_) => CourseDetailViewDesktop(
        myPath: myPath,
      ),
    );
  }

  @override
  CourseDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CourseDetailViewModel(myPath: myPath);
}
