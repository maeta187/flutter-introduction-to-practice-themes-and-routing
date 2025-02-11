import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import './normal_routing.dart';
// import './data_transfer_routing.dart';
// import './named_routing.dart';
import './router_widget.dart';

// void main() {
//   runApp(MaterialApp(
//     // home: FirstScreen(),
//     // 名前付きルーティング
//     // 初回表示画面を指定(中間画面を挟む場合は、初回で生成される)
//     /// `/` から始まるルートはディープリンクとして扱われる
//     initialRoute: '/',
//     routes: {
//       '/': (context) => const FirstScreen(),
//       '/second': (context) => const SecondScreen(),
//       '/second/third': (context) => const ThirdScreen(),
//     },
//   ));
// }

void main() {
  // ①
  // Routerウィジェットを生成
  runApp(MaterialApp.router(
    routerConfig: _router,
  ));
}

// ②
// GoRouterはRouterConfigのサブクラス
// ①のrouterConfigにパラメータを渡すことができる
final _router = GoRouter(
    // ③
    // routesのパラメータにリストで渡す
    routes: [
      // ④
      // 遷移先のパスやPageクラスの生成方法を指定
      GoRoute(
          path: '/',
          builder: (context, state) => const FirstScreen(),
          routes: [
            GoRoute(
              path: '/second',
              builder: (context, state) => const SecondScreen(),
              routes: [
                GoRoute(
                  path: '/third',
                  builder: (context, state) => const ThirdScreen(),
                ),
              ],
            ),
          ]),
      // GoRoute(
      //   path: '/second',
      //   builder: (context, state) => const SecondScreen(),
      // ),
      // GoRoute(
      //   path: '/third',
      //   builder: (context, state) => const ThirdScreen(),
      // ),
    ]);
