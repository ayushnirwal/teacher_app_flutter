class UserState {
  final String phoneNumber;

  UserState({
    required this.phoneNumber,
  });

  factory UserState.initial() {
    return UserState(phoneNumber: "");
  }

  UserState copyWith({String? phoneNumber}) {
    return UserState(phoneNumber: phoneNumber ?? this.phoneNumber);
  }
}
