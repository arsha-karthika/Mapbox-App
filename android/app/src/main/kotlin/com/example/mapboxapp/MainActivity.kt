//package com.example.mapboxapp
//
//import io.flutter.embedding.android.FlutterActivity
//
//class MainActivity: FlutterActivity()
package com.example.mapboxapp

import android.os.Bundle
import com.mapbox.mapboxsdk.Mapbox
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Initialize Mapbox with your Mapbox access token
        Mapbox.getInstance(applicationContext, "pk.eyJ1IjoiYWtoaWxsZXZha3VtYXIiLCJhIjoiY2x4MDcwYzZ4MGl2aTJqcmFxbXZzc3lndiJ9.9sxfvrADlA25b1CHX2VuDA")
    }
}
