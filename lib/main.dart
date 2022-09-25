import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('demo'),
      ),
      body: Column(
        children: const [
          Expanded(
            child: MyButtons(),
          ),
          Expanded(
            child: MyButtons(),
          ),
          Expanded(
            child: MyButtons(),
          ),
          Expanded(
            child: MyButtons(),
          ),
        ],
      ),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: MyContainer(text: '1st'),
        ),
        Expanded(
          flex: 1,
          child: MyContainer(text: '2st'),
        ),
        Expanded(
          flex: 1,
          child: MyContainer(text: '3rd'),
        ),
        Expanded(
          flex: 1,
          child: MyContainer(text: '4th'),
        ),
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: Colors.red[200],
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          width: 2.0,
          color: Colors.red,
        ),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
