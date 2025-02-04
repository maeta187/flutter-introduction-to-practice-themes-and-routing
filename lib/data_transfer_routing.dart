import 'package:flutter/material.dart';

// データの受け渡し
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'number: $_number',
            ),
            ElevatedButton(
              onPressed: () async {
                final newNumber = await Navigator.of(context).push<int>(
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(number: _number),
                  ),
                );
                setState(() {
                  if (newNumber != null) {
                    _number = newNumber;
                  }
                });
              },
              child: const Text('次へ'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Increment'),
              onPressed: () {
                Navigator.of(context).pop(number + 1);
              },
            ),
            ElevatedButton(
              child: const Text('Decrement'),
              onPressed: () {
                Navigator.of(context).pop(number - 1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
