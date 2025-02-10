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
            SizedBox(
              height: 60,
            ),
            // logo
            const Image(
              image: AssetImage('lib/images/hikeine-logo.png'),
              color: Color.fromARGB(255, 49, 49, 49),
              width: 250,
            ),

            SizedBox(
              height: 100,
            ),

            // hikeine title
            const Text(
              'Hikeine',
              style: TextStyle(
                color: Color.fromARGB(255, 49, 49, 49),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),

            // sub title
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

            SizedBox(
              height: 34,
            ),

            // shop now button
            FilledButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(
                    horizontal: 120,
                    vertical: 20,
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(
                  Color.fromARGB(255, 49, 49, 49),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Shop Now',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
