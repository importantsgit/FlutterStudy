import 'dart:math';

import 'package:flutter/material.dart';

class OrientationBuilderPage extends StatefulWidget {
  const OrientationBuilderPage({super.key});

  @override
  State<OrientationBuilderPage> createState() => _OrientationBuilderPageState();
}

class _OrientationBuilderPageState extends State<OrientationBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrientationBuilderPageState'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: orientation == Orientation.portrait ? 3 : 5, // 3열
            children: List.generate(50, (index) {
              final random = Random();
              Color color = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextDouble());
              Color textColor = Color.fromRGBO(random.nextInt(5),
                  random.nextInt(5), random.nextInt(5), random.nextDouble());
              return Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Text(
                  'item: $index',
                  style: TextStyle(color: textColor),
                ),
              );
            }),
          );
        },
      ), // 3열
    );
  }
}
