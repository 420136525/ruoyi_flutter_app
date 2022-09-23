import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeIndex extends StatefulWidget {
  const HomeIndex({Key? key}) : super(key: key);

  @override
  State<HomeIndex> createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
              child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl:
                "https://alteredqualia.com/xg/examples/nebula_artefact.html",
          )),
        ),
      ),
    );
  }
}
