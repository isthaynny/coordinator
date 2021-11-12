import 'package:micro_app_home/app/pages/home_1.dart';
import 'package:micro_app_home/app/pages/home_2.dart';
import 'package:micro_core/app/micro_core_utils.dart';

abstract class HomeRoutes {
  static const init = '/';
  static const home2 = '/home2';

  static final Map<String, WidgetBuilderArgs> routes = {
    init: (context, args) => const Home1Screen(),
    home2: (context, args) => const Home2Screen(),
  };
}
