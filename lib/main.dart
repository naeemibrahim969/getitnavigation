import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedproj/app/locator.dart';
import 'package:stackedproj/ui/views/bottom_sheet_example/bottom_sheet_example_view.dart';
import 'package:stackedproj/ui/views/dialogs/dialog_example_view.dart';
import 'package:stackedproj/ui/views/future_example/future_ex_view.dart';
import 'package:stackedproj/ui/views/image_picker/image_picker_view.dart';
import 'package:stackedproj/ui/views/partial_builds/partial_builds_view.dart';
import 'package:stackedproj/ui/views/posts_example/posts_view.dart';
import 'package:stackedproj/ui/views/reactive_example/reactive_view.dart';
import 'package:stackedproj/ui/views/stream_example/stream_ex_view.dart';
import 'package:stackedproj/ui/widgets/bottom_sheet_ui.dart';
import 'package:stackedproj/ui/widgets/custom_dialog_ui.dart';
import 'package:stackedproj/utils/paths.dart';
import 'package:stackedproj/app/router.dart' as router;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Stacked Project',
      // initialRoute: Paths.bottomNavigationView,
      // initialRoute comment for testing only
      home: BottomSheetExampleView(),
      onGenerateRoute: router.generateRoute,
      navigatorKey: StackedService.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}

