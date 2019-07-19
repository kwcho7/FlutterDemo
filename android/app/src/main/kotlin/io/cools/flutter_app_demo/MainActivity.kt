package io.cools.flutter_app_demo

import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import kotlinx.coroutines.*
import java.util.logging.StreamHandler

class MainActivity : FlutterActivity() {

    private val STREAM_COUNT = "cools.flutter.channel.event/increased"
    private val METHOD_PRESSED = "cools.flutter.channel.method/pressed"

    private val job = Job()
    private val scope = Dispatchers.Main + job
    private var streamCount = 0
    private var methodCount = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)

        EventChannel(flutterView, STREAM_COUNT).setStreamHandler(object : StreamHandler(), EventChannel.StreamHandler {
            override fun onListen(p0: Any?, p1: EventChannel.EventSink?) {
                p1?.let {
                    streamCountRunner(it)
                }
            }

            override fun onCancel(p0: Any?) {
            }
        })

        MethodChannel(flutterView, METHOD_PRESSED).setMethodCallHandler { methodCall, result ->
            if(methodCall.method == "getValueAndIncrease"){
                result.success(++methodCount)
            }else {
                result.notImplemented()
            }
        }
    }

    override fun onDestroy() {
        if(scope.isActive){
            scope.cancel()
        }
        super.onDestroy()
    }

    private fun streamCountRunner(event: EventChannel.EventSink){
        CoroutineScope(scope).launch {
            while(isActive){
                event.success(++streamCount)
                delay(1000)
            }
        }
    }
}
