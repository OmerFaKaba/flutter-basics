import 'package:flutter/material.dart';

class CategorySelectionWidget extends StatefulWidget {
  const CategorySelectionWidget({super.key, required this.path});
  final String path;

  @override
  State<CategorySelectionWidget> createState() =>
      _CategorySelectionWidgetState();
}

class _CategorySelectionWidgetState extends State<CategorySelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Category Selected"),
            duration: Duration(milliseconds: 300),
          ),
        );
      },
      child: Image.asset(widget.path),
    );
  }
}
