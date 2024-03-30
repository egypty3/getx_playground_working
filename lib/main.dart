import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground_working/dependency_management/view.dart';
import 'package:getx_playground_working/getx_controller/view.dart';
import 'package:getx_playground_working/getx_service/service_example.dart';
import 'package:getx_playground_working/getx_service/settings_service.dart';
import 'package:getx_playground_working/navigation/navigation.dart';
import 'package:getx_playground_working/state_management/reactive_state_management.dart';
import 'package:getx_playground_working/state_management/simple_state_management.dart';
import 'package:getx_playground_working/themes/themes_example.dart';
import 'package:getx_playground_working/translations/translations_example.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await initServices(); // AWAIT SERVICES INITIALIZATION.
  runApp(const MyApp());
}

Future<void> initServices() async {
  debugPrint('starting services ...');
  // Here is where you put get_storage, hive, shared_pref initialization.
  // or moor connection, or whatever that's async.
  await Get.putAsync(() => SettingsService().init());
  debugPrint('services started ...');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // // Navigation example
    // return const GetNavigation();
    // // Reactive State Management example
    // return ReactiveStateManagement();
    // // Simple State Management example
    // return const SimpleStateManagement();
    // // Simple Getx Controller example
    // return GetXControllerExample();
    // // Simple Dependency Management example
    // return DependencyExample();
    // // Simple Translation example
    // return const TranslationExample();
    // // Simple Getx Theme example
    // return ThemeExample();
    // Simple Getx Service example
    return const ServiceExample();
  }
}
