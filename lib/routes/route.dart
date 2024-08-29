import 'package:get/get.dart';
import 'package:threads/routes/route_names.dart';
import 'package:threads/views/home.dart';

class Routes {
  static final pages = [
    GetPage(name: RouteNames.home, page: ()=>const Home())
  ]
}