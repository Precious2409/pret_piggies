import 'package:equatable/equatable.dart';

enum SignupStatus{Initial, Processing, Successful, Error }
class SignupState extends Equatable{

  SignupState({
    required this.fullName,
    required this.emailAddress,
    required this.password,
    this.signupStatus = SignupStatus.Initial,
  });

  static SignupState empty = SignupState(
      fullName: "",
      emailAddress: "",
      password: ""
  );

  final String fullName;
  final String emailAddress;
  final String password;
  final SignupStatus signupStatus;



  @override
  // TODO: implement props
  List<Object?> get props => [
    fullName, emailAddress, password];

  SignupState copyWith({
    String? fullName,
    String? emailAddress,
    String? password,
    SignupStatus? signupStatus,
  }){
    return SignupState(
        fullName: fullName ?? this.fullName,
        emailAddress: emailAddress ?? this.emailAddress,
        password: password ?? this.password,
      signupStatus: signupStatus ?? this.signupStatus,
    );
  }
}