import 'package:flutter/material.dart';

class SecondViewPage extends StatelessWidget {
  const SecondViewPage({super.key});

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
                "ac_unit_sharp",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.ac_unit_sharp,
                size: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
