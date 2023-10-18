part of 'phone_auth_cubit.dart';

@immutable
class PhoneAuthState {}

class PhoneAuthInitial extends PhoneAuthState {}

class LoadingState extends PhoneAuthState {}

class LoadedSuccessState extends PhoneAuthState {}

class FaliuerMessageState extends PhoneAuthState {
  final String faliuerMessage;

  FaliuerMessageState({required this.faliuerMessage});
}
