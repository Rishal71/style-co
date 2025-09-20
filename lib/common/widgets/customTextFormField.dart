import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_co/common/controllers/textfiled_controller.dart';

class CustomTextFormField extends StatelessWidget {

  String? hintText;
  IconData? icon;
 bool obscureText;
  VoidCallback? toggleVisiblity;
  TextEditingController? controller;
    final String? Function(String?)? validator;


  CustomTextFormField({
    super.key,
    this.hintText,
    this.icon,
    this.obscureText =false,
     this.controller,
    this.toggleVisiblity,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 10),
      child: Column(
        children: [
          TextFormField(
            controller: controller,
            obscureText: obscureText,
            validator: validator,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: hintText,
              prefixIcon: Icon(icon),
              suffixIcon: toggleVisiblity != null
                  ? IconButton(
                      onPressed: toggleVisiblity,
                      icon: Icon(
                 obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
