import 'package:chris_website/app/app.dialogs.dart';
import 'package:chris_website/app/app.locator.dart';
import 'package:chris_website/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UnknownViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();
  final _dialogService = locator<DialogService>();

  void replaceWithHomeView() {
    _routerService.replaceWithHomeView();
  }

  void showCustomDialog({required String title, required String description}) {
    _dialogService.showCustomDialog(
        variant: DialogType.infoAlert, title: title, description: description);
  }
}
