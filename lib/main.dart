import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:hire_dorm/firebase_options.dart';
import 'package:hire_dorm/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:hire_dorm/src/features/main_pages/drawer_menu/drawer_menu_widget.dart';
import 'package:hire_dorm/src/repository/authentication_repository/authentication_repository.dart';
import 'package:hire_dorm/src/utils/theme/theme.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: ThisAppTheme.lightTheme,
      darkTheme: ThisAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 300),
      home: const SplashScreen(),
    );
  }
}
