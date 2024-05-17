import 'package:flutter_test/flutter_test.dart';
import 'package:chris_website/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('CoursesPageViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
