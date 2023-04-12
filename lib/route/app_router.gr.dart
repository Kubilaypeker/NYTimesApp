// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const homeScreen(),
      );
    },
    NewsRoute.name: (routeData) {
      final args =
          routeData.argsAs<NewsRouteArgs>(orElse: () => const NewsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: newsScreen(
          key: args.key,
          imageUrl: args.imageUrl,
          caption: args.caption,
          content: args.content,
        ),
      );
    },
  };
}

/// generated route for
/// [homeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [newsScreen]
class NewsRoute extends PageRouteInfo<NewsRouteArgs> {
  NewsRoute({
    Key? key,
    dynamic imageUrl,
    dynamic caption,
    dynamic content,
    List<PageRouteInfo>? children,
  }) : super(
          NewsRoute.name,
          args: NewsRouteArgs(
            key: key,
            imageUrl: imageUrl,
            caption: caption,
            content: content,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<NewsRouteArgs> page = PageInfo<NewsRouteArgs>(name);
}

class NewsRouteArgs {
  const NewsRouteArgs({
    this.key,
    this.imageUrl,
    this.caption,
    this.content,
  });

  final Key? key;

  final dynamic imageUrl;

  final dynamic caption;

  final dynamic content;

  @override
  String toString() {
    return 'NewsRouteArgs{key: $key, imageUrl: $imageUrl, caption: $caption, content: $content}';
  }
}
