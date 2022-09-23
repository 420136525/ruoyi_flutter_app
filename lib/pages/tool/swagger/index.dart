import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SwaggerIndex extends StatefulWidget {
  const SwaggerIndex({Key? key}) : super(key: key);

  @override
  State<SwaggerIndex> createState() => _SwaggerIndexState();
}

class _SwaggerIndexState extends State<SwaggerIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "系统接口",
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent, // 背景颜色设置为透明
        shadowColor: Colors.transparent,
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: "https://mouor.cn:8081/swagger-ui/index.html",
      ),
    );
  }
}
