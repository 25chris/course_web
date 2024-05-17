import 'package:chris_website/ui/common/app_colors.dart';
import 'package:chris_website/ui/common/app_constants.dart';
import 'package:chris_website/ui/common/shared_styles.dart';
import 'package:chris_website/ui/common/ui_helpers.dart';
import 'package:chris_website/ui/widgets/my_button_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  final HomeViewModel viewModel;
  const HomeViewDesktop({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      //Center untuk membuat tampilan lebih rapih tengah.
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            //GAMBAR
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/flutter_learning_illustration.webp",
                width: kdDesktopMaxContentWidth * .4,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            horizontalSpaceMedium,

            //Kolom Info
            SizedBox(
              width: kdDesktopMaxContentWidth * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[200],
                            border:
                                Border.all(color: Colors.blue[600]!, width: 2)),
                        child: Text(
                          "Flutter",
                          style: ktsBodyRegular.copyWith(
                              fontSize: 10,
                              color: kcWhite,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      horizontalSpaceSmall,
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[200],
                            border:
                                Border.all(color: Colors.blue[600]!, width: 2)),
                        child: Text(
                          "Stacked CLI",
                          style: ktsBodyRegular.copyWith(
                              fontSize: 10,
                              color: kcWhite,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceSmall,
                  // TITLE
                  Text(
                    "BELAJAR\nFLUTTER",
                    textAlign: TextAlign.start,
                    style: ktsTitleText,
                  ),
                  Divider(
                    thickness: 2,
                  ),

                  verticalSpaceSmall,

                  //SUBTITLE / SLOGAN
                  Text(
                    "Menyempurnakan pengembangan aplikasi Flutter\nmenggunakan Stacked Architecture.",
                    textAlign: TextAlign.start,
                    style: ktsBodyLarge,
                  ),

                  verticalSpaceSmall,

                  //Button (Google Sign In)
                  MyButtonIconTheme(
                    onPressed: () => viewModel.navigateToCoursesPageView(),
                    label: "Google Sign In",
                    color: Colors.red,
                    iconData: const FaIcon(FontAwesomeIcons.google),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
