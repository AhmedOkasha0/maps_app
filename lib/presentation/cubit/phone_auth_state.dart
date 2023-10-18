part of 'phone_auth_cubit.dart';

class PhoneAuthState {}

class PhoneAuthInitial extends PhoneAuthState {}

class LoadingState extends PhoneAuthState {}

class PhoneNumberSubmited extends PhoneAuthState {}

class PhonOtpVerified extends PhoneAuthState {}

class FaliuerMessageState extends PhoneAuthState {
  final String faliuerMessage;

  FaliuerMessageState({required this.faliuerMessage});
}
