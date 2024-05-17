import 'package:chris_website/app/app.locator.dart';
import 'package:chris_website/app/app.router.dart';
import 'package:chris_website/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CoursesPageViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();

  Future<String>? getImageUrl({required int width, int? height}) async {
    // Simulating network delay
    await Future.delayed(const Duration(seconds: 1));
    // Random image from Picsum
    try {
      return rectanglePhoto(width, height!);
    } catch (e) {
      return '';
    }
  }

  void navigateToCourseDetailsView({required String myPath}) {
    _routerService.navigateToCourseDetailView(myPath: myPath);
  }
}
