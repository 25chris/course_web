import 'package:chris_website/app/app.locator.dart';
import 'package:chris_website/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();

// ███╗░░██╗░█████╗░██╗░░░██╗██╗░██████╗░░█████╗░░██████╗██╗
// ████╗░██║██╔══██╗██║░░░██║██║██╔════╝░██╔══██╗██╔════╝██║
// ██╔██╗██║███████║╚██╗░██╔╝██║██║░░██╗░███████║╚█████╗░██║
// ██║╚████║██╔══██║░╚████╔╝░██║██║░░╚██╗██╔══██║░╚═══██╗██║
// ██║░╚███║██║░░██║░░╚██╔╝░░██║╚██████╔╝██║░░██║██████╔╝██║
// ╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░╚═════╝░╚═╝░░╚═╝╚═════╝░╚═╝

  void navigateToCoursesPageView() {
    _routerService.navigateToCoursesPageView();
  }
}
