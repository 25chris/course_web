import 'package:chris_website/ui/common/app_constants.dart';
import 'package:chris_website/ui/common/ui_helpers.dart';
import 'package:chris_website/ui/widgets/website_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'main_layout_viewmodel.dart';

const double _kNavbarHeight = 90;

class MainLayoutView extends StackedView<MainLayoutViewModel> {
  const MainLayoutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MainLayoutViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: DefaultTextStyle(
            style: GoogleFonts.openSans(),
            child: SizedBox(
              height: screenHeight(context),
              width: kdDesktopMaxContentWidth,
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: _kNavbarHeight,
                    child: WebsiteIcon(),
                  ),

                  //main Content
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        height: screenHeight(context) - _kNavbarHeight),
                    child: const NestedRouter(),
                  )
                ],
              ),
            )),
      ),
    );
  }

  @override
  MainLayoutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainLayoutViewModel();
}
