import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple) // アプリの外観の色を設定できる
                .copyWith(surface: Colors.blueGrey), // アプリの背景色が変わる
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600)), // テキストの色が変わる
        useMaterial3: true, // Material3のデザインを使う
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // このウィジェットはアプリケーションのホームページです。これは状態を持つウィジェットであり、
  // 状態を持つオブジェクト（以下に定義）を持ち、見た目に影響を与えるフィールドを含みます。

  // このクラスは状態の設定を行います。親（この場合はAppウィジェット）から提供された値（この場合はタイトル）を保持し、
  // 状態のbuildメソッドで使用されます。ウィジェットのサブクラスのフィールドは常に「final」としてマークされます。

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // このsetStateの呼び出しは、Flutterフレームワークにこの状態で何かが変更されたことを知らせます。
      // これにより、以下のbuildメソッドが再実行され、表示が更新された値を反映するようになります。
      // もしsetStateを呼び出さずに_counterを変更した場合、buildメソッドは再度呼び出されず、
      // 何も起こらないように見えるでしょう。
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // このメソッドはsetStateが呼び出されるたびに再実行されます。例えば、上記の_incrementCounterメソッドによってです。
    //
    // Flutterフレームワークは、buildメソッドを再実行するのを高速化するように最適化されているため、
    // 更新が必要なものを再構築するだけで済み、ウィジェットのインスタンスを個別に変更する必要はありません。
    return Scaffold(
      appBar: AppBar(
        // これを試してみてください: ここで色を特定の色（例えばColors.amber）に変更し、
        // ホットリロードをトリガーして、他の色がそのままの状態でAppBarの色が変わるのを見てください。
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // ここでは、MyHomePageオブジェクトから取得した値を使用して、
        // アプリバーのタイトルを設定します。
        title: Text(widget.title),
      ),
      body: Center(
        // Centerはレイアウトウィジェットです。単一の子ウィジェットを受け取り、
        // 親の中央に配置します。
        child: Column(
          // Columnもレイアウトウィジェットです。子ウィジェットのリストを受け取り、
          // 垂直に配置します。デフォルトでは、子ウィジェットに合わせて水平方向にサイズを調整し、
          // 親の高さにできるだけ合わせようとします。
          //
          // Columnには、サイズの調整や子ウィジェットの配置を制御するためのさまざまなプロパティがあります。
          // ここでは、mainAxisAlignmentを使用して子ウィジェットを垂直に中央に配置します。
          // この場合、主軸は垂直軸であり、Columnは垂直です（交差軸は水平方向になります）。
          //
          // これを試してみてください: "デバッグ描画"を呼び出します（IDEで「デバッグ描画の切り替え」アクションを選択するか、
          // コンソールで「p」を押します）して、各ウィジェットのワイヤーフレームを確認します。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // この末尾のカンマは、ビルドメソッドの自動フォーマットをより良くします。
    );
  }
}
