enum ProfileType {
  None,
  Teacher,
  Tutor,
  Student,
  Parent,
  School,
}

enum Gender { None, Female, Male, Other }

class School {
  String? name;
  String? address;

  School({this.name, this.address});
}

class UserState {
  final String phoneNumber;
  final String otp;
  final ProfileType profileType;
  final String name;
  final Gender gender;
  final School school;

  UserState(
      {required this.phoneNumber,
      required this.otp,
      required this.profileType,
      required this.name,
      required this.gender,
      required this.school});

  factory UserState.initial() {
    return UserState(
        phoneNumber: "",
        otp: "",
        profileType: ProfileType.None,
        name: "",
        gender: Gender.None,
        school: new School());
  }

  UserState copyWith(
      {String? phoneNumber,
      String? otp,
      ProfileType? profileType,
      String? name,
      Gender? gender,
      School? school}) {
    return UserState(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        otp: otp ?? this.otp,
        profileType: profileType ?? this.profileType,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        school: school ?? this.school);
  }
}
