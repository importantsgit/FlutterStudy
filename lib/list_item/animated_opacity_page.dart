import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({super.key});

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityState();
}

class _AnimatedOpacityState extends State<AnimatedOpacityPage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacity'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Container(width: 200, height: 200, color: Colors.green),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
      ),
    );
  }
}
