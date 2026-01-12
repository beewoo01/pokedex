class FindPasswordState {
  final String email;
  final bool isEmailValid;

  const FindPasswordState({this.email = '', this.isEmailValid = false});

  FindPasswordState copyWith({String? email, bool? isEmailValid}) {
    return FindPasswordState(
      email: email ?? this.email,
      isEmailValid: isEmailValid ?? this.isEmailValid,
    );
  }
}
