import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/pages/profile.dart';
import 'package:theme_provider/theme_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        child: Builder(
            builder: (context) => MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    primaryColor: Colors.blue.shade300,
                    dividerColor: Colors.black,
                  ),
                  title: title,
                  home: Profile(),
                )));
  }
}
