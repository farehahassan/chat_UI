import 'package:flutter/material.dart';

// ignore: camel_case_types
class categorySelector extends StatefulWidget {
  const categorySelector({super.key});

  @override
  State<categorySelector> createState() => _categorySelectorState();
}

// ignore: camel_case_types
class _categorySelectorState extends State<categorySelector> {
  int selectedIndex = 0;
  final List<String> catrgories = ['Messages', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.lightBlue,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catrgories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  catrgories[index],
                  style: TextStyle(
                      color: index == selectedIndex
                          ? Colors.white
                          : Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: 1.2),
                ),
              ),
            );
          }),
    );
  }
}
