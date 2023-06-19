import 'package:flutter/material.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({super.key});

  @override
  State<SnackBarPage> createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            var snackBar = SnackBar(
              content: const Text("스낵바 노출"),
              action: SnackBarAction(
                label: '선택',
                onPressed: () => print('확인'),
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Show SnackBar'),
        ),
      ),
    );
  }
}
