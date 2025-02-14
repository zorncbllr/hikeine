import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  String label;

  CategoryButton({
    super.key,
    required this.label,
  });

  @override
  _CategoryButtonState createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.green,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      onPressed: () {},
      child: Text(widget.label),
    );
  }
}
