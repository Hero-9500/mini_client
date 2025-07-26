import 'package:api_client/api_client.dart';
// import 'package:tide_monitoring/tide_monitoring.dart';
import 'package:tide_di/tide_di.dart';

Future<void> initDi() => initializeDIContainer([..._utilityDIInitializers()]);

List<TideDIInitializer> _utilityDIInitializers() => const [
  // MonitoringDIInitializer(),
  ApiClientDIInitializer(),
];
