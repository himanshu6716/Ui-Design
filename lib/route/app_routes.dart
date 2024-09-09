part of 'app_page.dart';


abstract class Routes {
  Routes._();
  static const splash = _Paths.splash;
  static const home = _Paths.home;
  static const explore = _Paths.explore;

}


abstract class _Paths {
  _Paths._();

  static const splash = '/';
  static const home = '/home_screen';
  static const explore = '/explore_chat';


}
