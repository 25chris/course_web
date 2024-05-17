// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i8;
import 'package:stacked/stacked.dart' as _i7;
import 'package:stacked_services/stacked_services.dart' as _i6;

import '../ui/views/course_detail/course_detail_view.dart' as _i5;
import '../ui/views/courses_page/courses_page_view.dart' as _i4;
import '../ui/views/home/home_view.dart' as _i3;
import '../ui/views/main_layout/main_layout_view.dart' as _i1;
import '../ui/views/unknown/unknown_view.dart' as _i2;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i6.StackedService.navigatorKey);

class StackedRouterWeb extends _i7.RootStackRouter {
  StackedRouterWeb({_i8.GlobalKey<_i8.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainLayoutViewRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.MainLayoutView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnknownViewRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.UnknownView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CoursesPageViewRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.CoursesPageView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CourseDetailViewRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CourseDetailViewArgs>(
          orElse: () =>
              CourseDetailViewArgs(myPath: pathParams.getString('myPath')));
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.CourseDetailView(
          key: args.key,
          myPath: args.myPath,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          MainLayoutViewRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              HomeViewRoute.name,
              path: '',
              parent: MainLayoutViewRoute.name,
            ),
            _i7.RouteConfig(
              CoursesPageViewRoute.name,
              path: 'course-page',
              parent: MainLayoutViewRoute.name,
            ),
            _i7.RouteConfig(
              CourseDetailViewRoute.name,
              path: 'course-detail/:myPath',
              parent: MainLayoutViewRoute.name,
            ),
          ],
        ),
        _i7.RouteConfig(
          UnknownViewRoute.name,
          path: '/404',
        ),
        _i7.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.MainLayoutView]
class MainLayoutViewRoute extends _i7.PageRouteInfo<void> {
  const MainLayoutViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainLayoutViewRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainLayoutView';
}

/// generated route for
/// [_i2.UnknownView]
class UnknownViewRoute extends _i7.PageRouteInfo<void> {
  const UnknownViewRoute()
      : super(
          UnknownViewRoute.name,
          path: '/404',
        );

  static const String name = 'UnknownView';
}

/// generated route for
/// [_i3.HomeView]
class HomeViewRoute extends _i7.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i4.CoursesPageView]
class CoursesPageViewRoute extends _i7.PageRouteInfo<void> {
  const CoursesPageViewRoute()
      : super(
          CoursesPageViewRoute.name,
          path: 'course-page',
        );

  static const String name = 'CoursesPageView';
}

/// generated route for
/// [_i5.CourseDetailView]
class CourseDetailViewRoute extends _i7.PageRouteInfo<CourseDetailViewArgs> {
  CourseDetailViewRoute({
    _i8.Key? key,
    required String myPath,
  }) : super(
          CourseDetailViewRoute.name,
          path: 'course-detail/:myPath',
          args: CourseDetailViewArgs(
            key: key,
            myPath: myPath,
          ),
          rawPathParams: {'myPath': myPath},
        );

  static const String name = 'CourseDetailView';
}

class CourseDetailViewArgs {
  const CourseDetailViewArgs({
    this.key,
    required this.myPath,
  });

  final _i8.Key? key;

  final String myPath;

  @override
  String toString() {
    return 'CourseDetailViewArgs{key: $key, myPath: $myPath}';
  }
}

extension RouterStateExtension on _i6.RouterService {
  Future<dynamic> navigateToMainLayoutView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MainLayoutViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToUnknownView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToCoursesPageView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const CoursesPageViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToCourseDetailView({
    _i8.Key? key,
    required String myPath,
    void Function(_i7.NavigationFailure)? onFailure,
  }) async {
    return navigateTo(
      CourseDetailViewRoute(
        key: key,
        myPath: myPath,
      ),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMainLayoutView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MainLayoutViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithUnknownView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithCoursesPageView(
      {void Function(_i7.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const CoursesPageViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithCourseDetailView({
    _i8.Key? key,
    required String myPath,
    void Function(_i7.NavigationFailure)? onFailure,
  }) async {
    return replaceWith(
      CourseDetailViewRoute(
        key: key,
        myPath: myPath,
      ),
      onFailure: onFailure,
    );
  }
}
