import 'package:flutter/material.dart';
import 'package:mtg_token_manager/presentation/components/molecules/token/helper/token.dart';
import 'package:mtg_token_manager/presentation/components/molecules/token/token_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: TokenWidget(token: Token.faerie())));
  }
}
