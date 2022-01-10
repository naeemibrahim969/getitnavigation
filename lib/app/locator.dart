import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stackedproj/app/locator.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => $initGetIt(getIt);

// Now run “flutter packages pub run build_runner build” to generate the necessary missing files.
//https://cshanjib.medium.com/dependency-injection-using-injector-and-getit-packages-in-flutter-c3739c2ad5dd
// flutter packages pub run build_runner build — delete-conflicting-outputs