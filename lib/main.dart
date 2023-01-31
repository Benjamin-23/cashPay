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
          children: [
            const Text(
              "Hello World",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print("Button pressed");
                },
                child: const Text("Next")),
            const Center(
              child: Text("Center"),
            ),
          ],
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: "Hot"),
        TaskItem(label: "Wet and Cold"),
        TaskItem(label: "Cold and Hot"),
        TaskItem(label: "Hot and Dry")
      ],
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;
   TaskItem({Key? key, required this.label}) : super(key: key)

  @override
 // ignore: library_private_types_in_public_api
 _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  final bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(onChanged: (newValue) => setState(() => _value == newValue), value: _value ),
        Text(widget.label)
      ],
    );
  }
}
