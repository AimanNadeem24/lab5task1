import 'package:flutter/material.dart';

void main() {
  runApp(const MyAiman());
}

class MyAiman extends StatelessWidget {
  const MyAiman({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: const Text('Lets Animate it'))),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isExpanded = false;
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: _isExpanded ? 200 : 100,
            height: _isExpanded ? 200 : 100,
            decoration: BoxDecoration(
              color: _isExpanded
                  ? const Color.fromARGB(255, 221, 119, 252)
                  : const Color.fromARGB(255, 54, 200, 244),
              borderRadius: BorderRadius.circular(_isExpanded ? 50 : 0),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: const Text('HELLO!!'),
          ),
          const SizedBox(height: 20),
          AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0.0,
            duration: const Duration(seconds: 1),
            child: const Text('I m your speaker'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isVisible = !_isVisible;
              });
            },
            child: const Text('Aiman Nadeem'),
          ),
        ],
      ),
    );
  }
}
