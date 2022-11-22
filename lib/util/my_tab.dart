import 'package:flutter/material.dart';
class MyTab extends StatelessWidget {
  const MyTab({Key? key, required this.iconPath}) : super(key: key);
  final iconPath;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(iconPath,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
