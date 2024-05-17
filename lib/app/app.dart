import 'package:chris_website/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:chris_website/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:chris_website/ui/views/home/home_view.dart';
import 'package:chris_website/ui/views/unknown/unknown_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:chris_website/ui/views/courses_page/courses_page_view.dart';
import 'package:chris_website/ui/views/main_layout/main_layout_view.dart';
import 'package:chris_website/ui/views/course_detail/course_detail_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(page: MainLayoutView, initial: true, children: [
      CustomRoute(page: HomeView, path: ''),
      CustomRoute(page: CoursesPageView, path: 'course-page'),
      CustomRoute(page: CourseDetailView, path: 'course-detail/:myPath'),
    ]),
// @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
