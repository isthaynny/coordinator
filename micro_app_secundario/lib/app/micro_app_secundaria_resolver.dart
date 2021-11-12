import 'package:micro_core/app/micro_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';
import 'package:micro_core/micro_core.dart';

import 'coordinator/secundaria_navigator.dart';

class MicroAppSecundariaResolver implements MicroApp {
  @override
  String get microAppName => 'micro_app_secundario';

  @override
  Map<String, WidgetBuilderArgs> get navigator => {
        AppRoutes.secundario: (context, args) => const SecundariaNavigator(),
      };
}
