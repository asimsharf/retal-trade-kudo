import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (_) => new WebviewScaffold(
                url: "http://www.retal-trade.com/ar/index.php",
                appBar: PreferredSize(
                    preferredSize: Size.fromHeight(1.0),
                    child: AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.red.withOpacity(0.5),
                      automaticallyImplyLeading: false, // hides leading widget
                      //flexibleSpace: SomeWidget(),
                    )),
                withZoom: true,
                withLocalStorage: true, //
                hidden: false, // AppBar
                initialChild: Container(
                  color: Colors.white70,
                  child: const Center(
                    child: Text(
                      'ريتال للتجارة',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ) // WebviewScaffold
        }); // Ma
  }
}
