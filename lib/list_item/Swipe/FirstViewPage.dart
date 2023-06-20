import 'package:flutter/material.dart';

class FirstViewPage extends StatelessWidget {
  const FirstViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const SizedBox(
          width: 200,
          height: 300,
          child: Column(
            children: [
              Text(
                "ice_skating",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.ice_skating,
                size: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
