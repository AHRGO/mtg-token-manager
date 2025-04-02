import 'package:flutter/material.dart';
import 'package:mtg_token_manager/presentation/theme/theme_extensions.dart';

class TokenWidget extends StatelessWidget {
  final double size;
  const TokenWidget({super.key, this.size = 200});

  @override
  Widget build(BuildContext context) {
    final double tokenHeight = size;
    final double tokenWidth = size * 0.7;

    return Container(
      height: tokenHeight,
      width: tokenWidth,
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
