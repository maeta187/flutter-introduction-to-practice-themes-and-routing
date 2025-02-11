import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

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
            // 複雑な画面遷移の要件を満たすため
            ElevatedButton(
              child: const Text('First から First へ'),
              onPressed: () {
                GoRouter.of(context).push('/');
              },
            ),
            ElevatedButton(
              child: const Text('First から Second へ'),
              onPressed: () {
                // GoRouter.of(context).go('/second');
                GoRouter.of(context).push('/second');
              },
            ),
            ElevatedButton(
              child: const Text('First から Third へ'),
              onPressed: () {
                // GoRouter.of(context).go('/third');
                GoRouter.of(context).go('/second/third');
                // GoRouter.of(context).push('/second/third');
              },
            )
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
            // 複雑な画面遷移の要件を満たすため
            ElevatedButton(
              child: const Text('Second から Second へ'),
              onPressed: () {
                // GoRouter.of(context).go('/third');
                // GoRouter.of(context).go('/second/third');
                GoRouter.of(context).push('/second');
              },
            ),
            ElevatedButton(
              child: const Text('Second から Third へ'),
              onPressed: () {
                // GoRouter.of(context).go('/third');
                // GoRouter.of(context).go('/second/third');
                GoRouter.of(context).push('/second/third');
              },
            ),
            ElevatedButton(
              child: const Text('戻る'),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThirdScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('戻る'),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
