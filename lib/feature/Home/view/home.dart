import 'package:flutter/material.dart';
import 'package:style_co/common/widgets/customTextField.dart';
import 'package:style_co/feature/Home/widget/discountCard.dart';
import 'package:style_co/feature/Home/widget/itemCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.black),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                      Text(
                        'Sarah',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.notifications, size: 30),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 300,
                    child: Customtextfield(
                      icon: Icons.search,
                      hintText: 'Search',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(Icons.tune, color: Colors.white, size: 23),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Discountcard(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Sales',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.brown, fontSize: 14,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Itemcard()
            ],
          ),
        ),
      ),
    );
  }
}
