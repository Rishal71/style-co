import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_co/common/controllers/textfiled_controller.dart';
import 'package:style_co/core/theme/material_theme.dart';
import 'package:style_co/feature/BottomNav/controller/bottom_controller.dart';
import 'package:style_co/feature/BottomNav/view/bottomNav.dart';
import 'package:style_co/feature/Auth/Register/view/register_screen.dart';
import 'package:style_co/feature/onBoarding/view/onboarding.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=>BottomNavProvider()),
          ChangeNotifierProvider(create: (_) => CommonController()),
    ],
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      title: 'StyleHub',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Bottomnav()
    );
  }
}



