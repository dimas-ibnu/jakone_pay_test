import 'package:bloc/bloc.dart';
import 'package:jakone_pay/app/routes/routes.dart';

class SplashCubit extends Cubit {
  SplashCubit() : super(null);

  void delay() async {
    await Future.delayed(const Duration(seconds: 3));

    router.pushReplacementNamed(AppRoutes.GUEST);
    emit(null);
  }
}