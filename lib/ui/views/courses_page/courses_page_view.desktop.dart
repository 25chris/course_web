import 'package:chris_website/ui/common/app_colors.dart';
import 'package:chris_website/ui/common/app_constants.dart';
import 'package:chris_website/ui/common/app_strings.dart';
import 'package:chris_website/ui/common/courses_data.dart';
import 'package:chris_website/ui/common/shared_styles.dart';
import 'package:chris_website/ui/common/ui_helpers.dart';
import 'package:chris_website/ui/widgets/my_button_theme.dart';
import 'package:chris_website/ui/widgets/my_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'courses_page_viewmodel.dart';

class CoursesPageViewDesktop extends ViewModelWidget<CoursesPageViewModel> {
  final CoursesPageViewModel viewModel;
  CoursesPageViewDesktop({Key? key, required this.viewModel}) : super(key: key);

  final myCourses = CoursesData().myCoursesData;

  @override
  Widget build(BuildContext context, CoursesPageViewModel viewModel) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: kdDesktopMaxContentWidth,
          child: ListView(
            children: [
              Column(
                children: [
                  //Header
                  SizedBox(
                    width: kdDesktopMaxContentWidth,
                    height: kdDesktopMaxContentHeight * .5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: kdDesktopMaxContentWidth * .4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: FutureBuilder(
                                future: viewModel.getImageUrl(
                                    width: 300, height: 150),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const Center(
                                        child: CircularProgressIndicator());
                                  } else if (snapshot.data == '') {
                                    return const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FaIcon(FontAwesomeIcons
                                            .triangleExclamation),
                                        verticalSpaceTiny,
                                        Text("Ooppss.. Image Broken")
                                      ],
                                    );
                                  } else {
                                    return Image.network(
                                      snapshot.data!,
                                      fit: BoxFit.cover,
                                    );
                                  }
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: kdDesktopMaxContentWidth * .4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue[50],
                                      border: Border.all(
                                          color: Colors.blue[700]!, width: 2),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Topik Utama",
                                      style: ktsBodyRegular.copyWith(
                                          fontSize: 11,
                                          color: kcMediumGrey,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                //Title
                                Text(
                                  myCourses.first['judul'].toString(),
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                  style: ktsBodyRegular.copyWith(
                                      fontSize: 25,
                                      color: kcPrimaryColorDark,
                                      fontWeight: FontWeight.w600),
                                ),

                                verticalSpaceSmall,

                                //Description
                                Text(
                                  myCourses.first['deskripsi'].toString(),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  style: ktsBodyRegular.copyWith(
                                      fontSize: 17.5, color: kcLightGrey),
                                ),

                                verticalSpaceSmall,

                                //price and number of courses
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(currencyFormat(
                                            value: myCourses.first['harga']
                                                as int))),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text("15 Courses")),
                                  ],
                                ),

                                verticalSpaceSmall,

                                //button
                                MyButtonTheme(
                                    onPressed: () =>
                                        viewModel.navigateToCourseDetailsView(
                                            myPath:
                                                'optimalisasi-aplikasi-flutter-menggunakan-stacked-architecture1'),
                                    label: "Daftar")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  verticalSpaceMedium,

                  Text(
                    "Daftar Tutorial",
                    style: ktsTitleText.copyWith(fontSize: 40),
                  ),

                  //List of Courses
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: StaggeredGrid.count(
                      crossAxisCount: 4,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      children: List.generate(
                        myCourses.length,
                        (index) => StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: 1.23,
                          child: CourseTile(
                            index: index,
                            viewModel: viewModel,
                            myCourse: myCourses[index],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const MyFooter()
            ],
          ),
        ),
      ),
    );
  }
}

class CourseTile extends StatelessWidget {
  final int index;
  final CoursesPageViewModel viewModel;
  final Map myCourse;
  const CourseTile(
      {Key? key,
      required this.index,
      required this.viewModel,
      required this.myCourse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: FutureBuilder(
            future: viewModel.getImageUrl(
                width: int.parse("30$index"), height: 150),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.data == '') {
                return const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.triangleExclamation),
                    verticalSpaceTiny,
                    Text("Ooppss.. Image Broken")
                  ],
                );
              } else {
                return ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.network(
                    snapshot.data!,
                    fit: BoxFit.cover,
                  ),
                );
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              SizedBox(
                height: 50,
                child: Text(
                  myCourse['judul'],
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  style: ktsBodyRegular.copyWith(
                      fontSize: 17.5,
                      color: kcPrimaryColorDark,
                      fontWeight: FontWeight.w600),
                ),
              ),

              //Description
              Text(
                myCourse['deskripsi'],
                textAlign: TextAlign.start,
                maxLines: 2,
                style:
                    ktsBodyRegular.copyWith(fontSize: 13, color: kcMediumGrey),
              ),

              //price and number of courses
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(currencyFormat(value: myCourse['harga']))),
                  TextButton(
                      onPressed: () {},
                      child: Text('${myCourse['jumlahVideo']} courses')),
                ],
              ),

              //button
              MyButtonTheme(
                  onPressed: () => viewModel.navigateToCourseDetailsView(
                      myPath: myCourse['path']),
                  label: "Daftar")
            ],
          ),
        ),
      ],
    );
  }
}
