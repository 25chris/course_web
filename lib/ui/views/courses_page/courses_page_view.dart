import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'courses_page_view.desktop.dart';
import 'courses_page_view.tablet.dart';
import 'courses_page_view.mobile.dart';
import 'courses_page_viewmodel.dart';

class CoursesPageView extends StackedView<CoursesPageViewModel> {
  const CoursesPageView({super.key});

  @override
  Widget builder(
    BuildContext context,
    CoursesPageViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const CoursesPageViewMobile(),
      tablet: (_) => const CoursesPageViewTablet(),
      desktop: (_) => CoursesPageViewDesktop(
        viewModel: viewModel,
      ),
    );
  }

  @override
  CoursesPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CoursesPageViewModel();
}
