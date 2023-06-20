package com.example.flutter_practice

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    // Flutter 연결하는 코드
    private  val CHANNEL = "example.com/value"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "getValue") {
                result.success("Success") // 결과 리턴 -> flutter에 success 보내기
            } else {
                result.notImplemented() // 예외처리
            }
        }
    }
}
