import 'package:flutter/material.dart';

class Greeter extends StatelessWidget {
  const Greeter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            const Image(
              image: AssetImage('lib/images/hikeine-logo.png'),
              color: Color.fromARGB(255, 49, 49, 49),
              width: 250,
            ),

            SizedBox(
              height: 100,
            ),

            // hikeine text
            const Text(
              'Hikeine',
              style: TextStyle(
                color: Color.fromARGB(255, 49, 49, 49),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              child: const Text(
                'Gear up for your next adventure with premium hiking essentials.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ),

            // shop now button
            GestureDetector(
              onTap: () {
                print('shopping');
              },
              child: Container(
                margin: EdgeInsets.only(
                  top: 28,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 49, 49, 49),
                ),
                child: Text(
                  'Shop Now',
                  style: TextStyle(
                    color: Colors.grey[200],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
