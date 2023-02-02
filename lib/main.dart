import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'CashPay'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: const <Widget>[
            Text("Home"),
            Text("About"),
            Expanded(
                child: FittedBox(
              child: FlutterLogo(),
            ))
          ],
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
// class AppExample extends StatefulWidget {
//   const AppExample({super.key});

//   @override
//   State<AppExample> createState() => _AppExampleState();
// }

// class _AppExampleState extends State<AppExample> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }