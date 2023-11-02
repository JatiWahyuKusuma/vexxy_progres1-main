import 'package:flutter/material.dart';
import 'package:vexxy/login_vexxy_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:vexxy/dashboard.dart';
import 'package:vexxy/Page_Item/item.dart';
import 'package:vexxy/item_in.dart';
import 'package:vexxy/item_out.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginVexxyPage(),
    );
  }
}
