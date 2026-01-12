import 'package:flutter_pokedex/presentation/screen/auth/password/state/find_password_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final findPasswordViewModelProvider =
    NotifierProvider.autoDispose<FindPasswordViewModel, FindPasswordState>(
      () => FindPasswordViewModel(),
    );

class FindPasswordViewModel extends AutoDisposeNotifier<FindPasswordState> {
  @override
  FindPasswordState build() {
    return const FindPasswordState();
  }

  void onEmailChanged(String value) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    final isValid = emailRegex.hasMatch(value);

    state = state.copyWith(email: value, isEmailValid: isValid);
  }

  Future<void> findPassword() async {
    if (!state.isEmailValid) {
      return;
    }
  }
}
