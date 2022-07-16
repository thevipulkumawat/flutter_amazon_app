import 'package:flutter/material.dart';
import 'package:flutter_amazon_app/constants/global_variable.dart';
import 'package:flutter_amazon_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => generateRoute(settings),
      title: 'Flutter Amazon',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: const AppBarTheme(
              elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('hello.'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('Amazon Flutter App'),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("click me"))
          ],
        ),
      ),
    );
  }
}
