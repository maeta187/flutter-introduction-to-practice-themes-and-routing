import 'package:flutter/material.dart';

// ナビゲーションとルーティング
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstScreen'),
      ),
      body: Center(
          child: ElevatedButton(
              child: const Text('次へ'),
              onPressed: () {
                // Navigatorウィジェットの静的メソッド`of`からNavigatorStateクラスのインスタンスを取得
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );

                // MaterialPageRouteはプラットフォームに併せて適切なアニメーションを提供する
                // 実際は変数に代入せず実行することが多い
                // final route = MaterialPageRoute(
                //   builder: (context) => const SecondScreen(),
                // );
              })),
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
          child: ElevatedButton(
              child: const Text('戻る'),
              onPressed: () {
                Navigator.of(context).pop();
              })),
    );
  }
}
