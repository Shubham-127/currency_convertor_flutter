import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:currency_convertor/cc_material.dart';
import 'package:currency_convertor/cc_cupertino.dart';
import 'package:currency_convertor/adv_material.dart';

void main() {
  runApp(const AdvmaterialApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Ccmaterial());
  }
}

class CccupertinoApp extends StatelessWidget {
  const CccupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: Cccupertino());
  }
}

class AdvmaterialApp extends StatelessWidget {
  const AdvmaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Advmaterial());
  }
}
