import 'package:flutter/material.dart';
import 'package:hikeine/utils/category_button.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<String> categories = ['All', 'Tents', 'Bags', 'Shoes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.green,
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: ListView(
          children: [
            // search bar
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 4,
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 45,
                    color: Colors.green,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 4,
              ),
              child: Row(
                spacing: 8,
                children: [
                  for (String category in categories)
                    CategoryButton(label: category)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
