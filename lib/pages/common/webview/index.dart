import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewIndex extends StatefulWidget {
  const WebViewIndex({Key? key}) : super(key: key);

  @override
  State<WebViewIndex> createState() => _WebViewIndexState();
}

class _WebViewIndexState extends State<WebViewIndex> {
  @override
  Widget build(BuildContext context) {
    var arg = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          arg["title"],
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // 背景颜色设置为透明
        shadowColor: Colors.transparent,
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: arg["url"],
      ),
    );
  }
}
