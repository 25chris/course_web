import 'package:chris_website/app/app.locator.dart';
import 'package:chris_website/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CourseDetailViewModel extends BaseViewModel {
  final String myPath;
  CourseDetailViewModel({required this.myPath});

  final _routerService = locator<RouterService>();

  void navigateToUnkown() => _routerService.navigateToUnknownView();
}
