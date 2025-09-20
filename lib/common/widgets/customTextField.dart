import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  final String? hintText;
  IconData? icon;
  Customtextfield({super.key, this.hintText, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
         enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.grey), // normal state
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.grey, width: 2), // change blue to brown
    ),
        prefixIcon: Icon(icon, color: Colors.black),
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 1),
        border: OutlineInputBorder(
        
          borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
