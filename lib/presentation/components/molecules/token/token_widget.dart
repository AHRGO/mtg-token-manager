import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtg_token_manager/presentation/components/molecules/token/cubit/token_cubit.dart';
import 'package:mtg_token_manager/presentation/components/molecules/token/cubit/token_state.dart';
import 'package:mtg_token_manager/presentation/components/molecules/token/helper/token.dart';
import 'package:mtg_token_manager/presentation/theme/theme_extensions.dart';

class TokenWidget extends StatelessWidget {
  final Token token;
  final double size;

  const TokenWidget({super.key, required this.token, this.size = 200});

  // fica mais fácil de ver as modificações sendo feitas no componente
  const TokenWidget.big({super.key, required this.token}) : size = 400;

  @override
  Widget build(BuildContext context) {
    final cubit = TokenCubit(TokenInitialState(token: token));

    final double tokenHeight = size;
    final double tokenWidth = size * 0.7;

    return BlocBuilder<TokenCubit, TokenState>(
      bloc: cubit,
      builder: (context, state) {
        return Container(
          height: tokenHeight,
          width: tokenWidth,
          decoration: BoxDecoration(
            color: context.colors.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: size * 0.032),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [Text(state.name)],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.type, style: TextStyle(fontSize: size * 0.05)),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size * 0.08,
                  bottom: size * 0.045,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(state.keywords ?? '')],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: size * 0.025,
                      bottom: size * 0.025,
                    ),
                    child: Text("${state.power}/${state.toughness}"),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
