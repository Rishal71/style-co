import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_co/common/controllers/textfiled_controller.dart';
import 'package:style_co/common/widgets/customButton.dart';
import 'package:style_co/common/widgets/customTextFormField.dart';
import 'package:style_co/feature/Auth/Register/view/register_screen.dart';

class LoginFormFeild extends StatelessWidget {
  LoginFormFeild({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<CommonController>(context, listen: false);

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          CustomTextFormField(
            hintText: 'Email',
            icon: Icons.email,
            controller: auth.emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return 'Enter a valid email';
              }
              return null;
            },
          ),
          Consumer<CommonController>(
            builder: (context, auth, child) {
              return CustomTextFormField(
                hintText: 'Password',
                icon: Icons.lock,
                obscureText: auth.obscurePassword,
                toggleVisiblity: auth.togglePasswordVisibility,
                controller: auth.passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              );
            },
          ),
         
          SizedBox(height: 20),
          CustomElevatedButton(
            text: 'Login',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Form Submitted')));
              }
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don"t have an account?',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(8),
                  minimumSize: Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.brown),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
