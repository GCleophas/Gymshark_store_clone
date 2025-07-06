import 'package:flutter/material.dart';
import 'package:gymshark_store/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/logo_short.png', width: 75)),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: Builder(
            builder: (context) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size.fromHeight(100),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(initialIndex: 0),
                ),
              ),
              child: const Text(
                'Continue the store!',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'BebasNeue',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
