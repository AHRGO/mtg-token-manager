import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtg_token_manager/presentation/components/molecules/token/cubit/token_state.dart';
import 'package:mtg_token_manager/presentation/components/molecules/token/helper/token.dart';

class TokenCubit extends Cubit<TokenState> {
  TokenCubit(super.initialState);

  void tapToken({required Token token}) {
    emit(TokenTappedState(token: token));
  }
}
