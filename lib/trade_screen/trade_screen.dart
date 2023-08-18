import 'dart:async';
import 'package:flutter_webview_pro/platform_interface.dart';
import 'package:flutter_webview_pro/webview_flutter.dart';
import 'package:flutter/material.dart';


class TradeScrenn extends StatefulWidget {
  const TradeScrenn({Key? key}) : super(key: key);

  @override
  State<TradeScrenn> createState() => _TradeScrennState();
}

class _TradeScrennState extends State<TradeScrenn> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return WebView(
      zoomEnabled: false,
      backgroundColor: const Color(0xff0D1019),
      initialUrl:'https://coinmarketcap.com/currencies/bitcoin/',
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}
