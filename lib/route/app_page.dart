import 'package:get/get.dart';
import 'package:ui/view/explorechat/explore_chat.dart';
import 'package:ui/view/home/home_screen.dart';
import 'package:ui/view/splash/splash_screen.dart';
part 'app_routes.dart';


class AppPages {
  AppPages._();

  static const INITIAL = Routes.splash;

  static final routes = [

    GetPage( name: _Paths.splash,
        page: ()=> SplashScreen(),
    ),

    GetPage(
      name: _Paths.home,
      page: () => HomeScreen(),
    ),

    GetPage(
        name: Routes.explore,
        page: ()=> ExploreChat(),
    ),

  ];
}
