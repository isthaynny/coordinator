import 'package:micro_app_secundario/app/pages/secundaria_screen.dart';
import 'package:micro_core/app/micro_core_utils.dart';

abstract class SecundariaRoutes {
  static const init = '/';

  static final Map<String, WidgetBuilderArgs> routes = {
    init: (context, args) => const SecundariaScreen(),
  };
}
