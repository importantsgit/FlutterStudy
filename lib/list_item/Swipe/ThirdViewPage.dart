import 'package:flutter/material.dart';

class ThirdViewPage extends StatelessWidget {
  const ThirdViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const SizedBox(
          width: 300,
          height: 300,
          child: Column(
            children: [
              Text(
                "accessible",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.accessible,
                size: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
