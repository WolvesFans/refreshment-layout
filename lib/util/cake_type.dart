// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CakeType extends StatelessWidget {
  final String cakeType;
  final bool isSelected;
  final VoidCallback onTap;

  CakeType(
      {required this.cakeType, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        padding: EdgeInsets.all(8),
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.orange.withOpacity(0.5)
              : Colors.white.withOpacity(0.5),
        ),
        child: Text(cakeType,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.white,
            )),
      ),
    );
  }
}
