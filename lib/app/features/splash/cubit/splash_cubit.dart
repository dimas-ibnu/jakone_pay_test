import 'package:bloc/bloc.dart';

class SplashCubit extends Cubit {
  SplashCubit() : super(null);

  void delay() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(null);
  }
}