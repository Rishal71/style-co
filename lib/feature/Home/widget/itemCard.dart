import 'package:flutter/material.dart';

class Itemcard extends StatelessWidget {
  const Itemcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
  child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 0.7,
    ),
    itemCount: 20,
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          color: Color(0xFFF5E6D3),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset('assets/model.jpeg',fit: BoxFit.cover,),)
      );
    },
  ),
);


  }
}