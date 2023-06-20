import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MethodChannelPage extends StatefulWidget {
  const MethodChannelPage({super.key});

  @override
  State<MethodChannelPage> createState() => _MethodChannelPageState();
}

class _MethodChannelPageState extends State<MethodChannelPage> {
  static const platform = MethodChannel('example.com/value');
  String _value = 'null';

  Future<void> _getNativeValue() async {
    try {
      String value = await platform.invokeMethod('getValue');
      setState(() {
        _value = value;
      });
    } on PlatformException catch (e) {
      setState(() {
        _value = '네이티브 코드 실행 에러 ${e.message}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MethodChannel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_value),
            ElevatedButton(
              onPressed: _getNativeValue,
              child: const Text('네이티브 값 얻기'),
            )
          ],
        ),
      ),
    );
  }
}
