import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_introduction_to_practice_themes_and_routing/riverpod_sample.dart';
import 'package:flutter_introduction_to_practice_themes_and_routing/riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: RiverpodSample(),
    ),
  );
}
