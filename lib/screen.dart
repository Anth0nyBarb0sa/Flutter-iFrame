import 'package:easy_web_view/easy_web_view.dart';
import 'package:flutter/material.dart';

class PhpContactForm extends StatefulWidget {
  @override
  _PhpContactFormState createState() => _PhpContactFormState();
}

class _PhpContactFormState extends State<PhpContactForm> {
  String src = 'https://google.com/';
  static ValueKey key = ValueKey('key_0');
  bool _isHtml = false;
  bool _blockNavigation = false;
  bool _isMarkdown = false;
  bool _useWidgets = false;
  bool _isSelectable = false;

  bool open = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
        body: Stack(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: EasyWebView(
              src: src,
              onLoaded: () {
                print('$key: Loaded: $src');
              },
              isHtml: _isHtml,
              isMarkdown: _isMarkdown,
              convertToWidgets: _useWidgets,
              key: key,
              widgetsTextSelectable: _isSelectable,
              webNavigationDelegate: (_) => _blockNavigation
                  ? WebNavigationDecision.prevent
                  : WebNavigationDecision.navigate,
              crossWindowEvents: [
                CrossWindowEvent(
                    name: 'Test',
                    eventAction: (eventMessage) {
                      print('Event message: $eventMessage');
                    }),
              ],
              // width: 100,
              // height: 100,
            )),
      ],
    ));
  }
}
