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

import 'course_detail_viewmodel.dart';

class CourseDetailViewDesktop extends ViewModelWidget<CourseDetailViewModel> {
  final String myPath;
  const CourseDetailViewDesktop({super.key, required this.myPath});

  @override
  Widget build(BuildContext context, CourseDetailViewModel viewModel) {
    if (CoursesData()
        .myCoursesData
        .where((element) => element['path'] == myPath)
        .isEmpty) {
      viewModel.navigateToUnkown();
      return Container();
    } else {
      final myCourse = CoursesData()
          .myCoursesData
          .firstWhere((element) => element['path'] == myPath);

      var sesiList = myCourse['sesi'] as List<Map<String, Object>>;
      var goalsList = myCourse['goals'] as List<String>;
      var kontenList = myCourse['konten'] as List<String>;
      var hargaCourse = myCourse['harga'] as int;
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: kdDesktopMaxContentWidth,
            child: ListView(
              children: [
                Column(
                  children: [
                    Text(
                      myCourse['judul'].toString(),
                      style: ktsTitleText.copyWith(fontSize: 50),
                    ),
                    Text(
                      myCourse['deskripsi'].toString(),
                      maxLines: 4,
                      style: ktsBodyRegular,
                    ),
                  ],
                ),
                verticalSpaceSmall,
                Divider(
                  thickness: 3,
                ),
                verticalSpaceSmall,
                SizedBox(
                  width: screenWidth(context),
                  height: 500,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        rectanglePhoto(1280, 768),
                        fit: BoxFit.cover,
                      )),
                ),
                verticalSpaceMedium,
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Yang akan kamu pelajari di dalam sesi kursus ini:",
                                  style: ktsTitleText.copyWith(fontSize: 35),
                                ),
                                Divider(
                                  color: kcMediumGrey,
                                  thickness: 2,
                                ),
                                ListView.builder(
                                  itemCount: kontenList.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) => Row(
                                    children: [
                                      Text('• ',
                                          style: ktsBodyRegular.copyWith(
                                              fontWeight: FontWeight.w700)),
                                      Expanded(
                                        child: Text(
                                          kontenList[index],
                                          style: ktsBodyRegular,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            verticalSpaceMedium,
                            Text(
                              "Goal setelah melewati kursus ini:",
                              style: ktsTitleText.copyWith(fontSize: 35),
                            ),
                            Divider(
                              color: kcMediumGrey,
                              thickness: 2,
                            ),
                            ListView.builder(
                              itemCount: goalsList.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => Row(
                                children: [
                                  Text('• ',
                                      style: ktsBodyRegular.copyWith(
                                          fontWeight: FontWeight.w700)),
                                  Expanded(
                                    child: Text(
                                      goalsList[index],
                                      style: ktsBodyRegular,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  currencyFormat(value: hargaCourse),
                                  style: ktsTitleText.copyWith(fontSize: 30.0),
                                ),
                                verticalSpaceMedium,
                                SizedBox(
                                  width: screenWidth(context),
                                  child: Text(
                                    "Fasilitas yang diperoleh",
                                    style: ktsTitleText.copyWith(fontSize: 15),
                                  ),
                                ),
                                verticalSpaceSmall,
                                Divider(),
                                verticalSpaceSmall,
                                ListTile(
                                  leading: FaIcon(
                                    FontAwesomeIcons.video,
                                    color: kcPrimaryColor,
                                  ),
                                  title: Text(
                                    "Akses lengkap video pembelajaran",
                                    style: ktsBodyRegular,
                                  ),
                                ),
                                ListTile(
                                  leading: FaIcon(
                                    FontAwesomeIcons.filePdf,
                                    color: kcPrimaryColor,
                                  ),
                                  title: Text(
                                    "File PDF transkrip dan catatan pembelajaran",
                                    style: ktsBodyRegular,
                                  ),
                                ),
                                ListTile(
                                  leading: FaIcon(
                                    FontAwesomeIcons.certificate,
                                    color: kcPrimaryColor,
                                  ),
                                  title: Text(
                                    "Sertifikat bukti penyelesaian pelatihan",
                                    style: ktsBodyRegular,
                                  ),
                                ),
                                verticalSpaceSmall,
                                MyButtonTheme(
                                    onPressed: () {}, label: "Daftar Kursus")
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                verticalSpaceMedium,
                Text(
                  "Konten Kursus",
                  style: ktsTitleText,
                ),
                StaggeredGrid.count(
                  crossAxisCount: 8,
                  mainAxisSpacing: 32,
                  crossAxisSpacing: 32,
                  children: List.generate(
                      sesiList.length,
                      (index) => StaggeredGridTile.count(
                          crossAxisCellCount: 4,
                          mainAxisCellCount: 3,
                          child: Container(
                            child: UnitTile(
                              myUnit: sesiList[index],
                              index: index,
                            ),
                          ))),
                ),
                MyFooter()
              ],
            ),
          ),
        ),
      );
    }
  }
}

class UnitTile extends StatelessWidget {
  final int index;
  final Map<String, Object> myUnit;
  const UnitTile({super.key, required this.myUnit, required this.index});

  @override
  Widget build(BuildContext context) {
    var videos = myUnit['videos'] as List<Map<String, Object>>;
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.blueGrey[50],
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            width: screenWidth(context),
            child: Text(
              "0${index + 1}",
              textAlign: TextAlign.end,
              style: ktsTitleText.copyWith(fontSize: 75),
            ),
          ),
          SizedBox(
            width: screenWidth(context),
            child: Text(
              myUnit['judulSesi'].toString(),
              textAlign: TextAlign.start,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: ktsBodyLarge.copyWith(
                  fontWeight: FontWeight.w800, fontSize: 25),
            ),
          ),
          ListView.builder(
            itemCount: videos.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => VideoDetailTile(
              videoInfo: videos[index],
              index: index,
            ),
          )
        ],
      ),
    );
  }
}

class VideoDetailTile extends StatelessWidget {
  final int index;
  final Map<String, Object> videoInfo;
  const VideoDetailTile(
      {super.key, required this.videoInfo, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        videoInfo['judulVideo'].toString(),
        style: ktsBodyRegular.copyWith(fontWeight: FontWeight.w700),
      ),
      subtitle: Text("Pelajaran 0${index + 1}"),
      trailing: Container(
        decoration: BoxDecoration(
            color: kcVeryLightGrey, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(videoInfo['durasiVideo'].toString()),
        ),
      ),
    );
  }
}
