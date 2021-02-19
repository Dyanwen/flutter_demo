import 'package:flutter/material.dart';
import 'package:flutter_application/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

/// APP

///

/// 本模块函数，加载状态类组件MyApp
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('主页'),
        ),
        body: Center(
          child: HomePage(),
        ),
      ),
    );
  }
}
