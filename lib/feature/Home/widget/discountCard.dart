import 'package:flutter/material.dart';
import 'package:style_co/common/widgets/customButton.dart';

class Discountcard extends StatelessWidget {
  const Discountcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(2, 4),
            color: Colors.grey,
          ),
        ],
        color: Colors.brown,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Collections',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Discount 50% for every first\ntransaction',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
              Spacer(),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/shopping.webp',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xFFF5E6D3),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              'Buy Now',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
