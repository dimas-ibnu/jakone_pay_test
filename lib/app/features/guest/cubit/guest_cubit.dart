import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jakone_pay/app/routes/app_router.dart';
import 'package:jakone_pay/app/routes/app_routes.dart';

class GuestCubit extends Cubit {
  GuestCubit() : super(null);

  void routeToHome() {
    router.pushReplacementNamed(AppRoutes.HOME);
  }
}
