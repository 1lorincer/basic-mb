package com.start.start_flutter_application

import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity(){
    override fun onCreate(savedInstance: Bundle?) {
        WindowCompat.setDecorFitsSystemWindows(window, false)
        super().onCreate(savedInstance)
    }
}
