import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pemprograman_mobile/src/config/app_router.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pemprograman Mobile - Marzuki Ahmad Syarif',
        initialRoute: '/',
        onGenerateRoute: AppRouter().onGenerateRoute,
        theme: ThemeData(
            primarySwatch: Colors.indigo,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp, bodyColor: Colors.black),
          ),
        builder: (_, child) => Container(
          width: 1.sw,
          height: 1.sh,
          color: Colors.white,
          child: SafeArea(child: child!),
        ),
      ),
      
    );
  }
}