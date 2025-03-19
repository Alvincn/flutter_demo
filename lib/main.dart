import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690), // 设计稿的尺寸
      builder: (context, child) => MaterialApp(home: MyHomePage()),
    );
  }
}
