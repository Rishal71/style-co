import 'package:flutter/material.dart';
import 'package:style_co/core/theme/material_theme.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(

          decoration: BoxDecoration(
            color: activeColor,
            borderRadius: const BorderRadius.only(
              // bottomLeft: Radius.circular(80),
              // bottomRight: Radius.circular(80),
            ),
          ),
        ),
        // Content
        Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            // padding: const EdgeInsets.all(24),
            child: child,
          ),
        ),
      ],
    );
  }
}
