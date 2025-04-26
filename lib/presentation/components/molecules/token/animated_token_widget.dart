import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:mtg_token_manager/models/token.dart';
import 'package:mtg_token_manager/presentation/components/molecules/token/token_widget.dart';

class AnimatedTokenWidget extends StatefulWidget {
  const AnimatedTokenWidget({super.key});

  @override
  State<AnimatedTokenWidget> createState() => _AnimatedTokenWidgetState();
}

class _AnimatedTokenWidgetState extends State<AnimatedTokenWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool rotated = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 0,
      end: math.pi / 2,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  void _rotate() {
    if (rotated) {
      _controller.reverse();
    } else {
      _controller.forward();
    }

    rotated = !rotated;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _rotate,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.rotate(angle: _animation.value, child: child);
        },
        child: TokenWidget(token: Token.faerie()),
      ),
    );
  }
}
