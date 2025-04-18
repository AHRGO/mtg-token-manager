import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mtg_token_manager/presentation/components/molecules/token/animated_token_widget.dart';
// import 'package:mtg_token_manager/presentation/components/molecules/token/helper/token.dart';
// import 'package:mtg_token_manager/presentation/components/molecules/token/token_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  _addToken() {
    log('adiciona token');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: AnimatedTokenWidget()),
      floatingActionButton: FloatingActionButton(
        onPressed: _addToken(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
