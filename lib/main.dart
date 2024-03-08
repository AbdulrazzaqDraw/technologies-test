import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_data/constants/theme_constant.dart';

import 'injection.dart';
import 'screens/home/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
              useMaterial3: true,
            ),
            home: HomePage(),
          );
        });
  }
}
