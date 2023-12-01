import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Widget/AppBarWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Costum App Bar Widget
          const AppBarWidget(),

          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "What would you like to have?",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
