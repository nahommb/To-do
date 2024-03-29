import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/task_data.dart';
import 'homescreen.dart';
import 'package:provider/provider.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) =>taskData(),
      child: MaterialApp(
        home: homescreen(),
      ),
    );
  }
}
