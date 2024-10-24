import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jakone_pay/app/features/guest/cubit/guest_cubit.dart';
import 'package:jakone_pay/app/features/splash/cubit/splash_cubit.dart';
import 'package:jakone_pay/app/routes/app_router.dart';
import 'config/theme/themes.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        // Add global bloc here
        providers: [
          BlocProvider(create: (context) => SplashCubit()),
          BlocProvider(create: (context) => GuestCubit()),
        ],
        child: MaterialApp.router(
          title: 'Jakone Pay',
          darkTheme: AppThemeData.darkThemeData,
          theme: AppThemeData.lightThemeData,
          debugShowCheckedModeBanner: false,
          routerDelegate: router.routerDelegate,
    routeInformationParser: router.routeInformationParser,
    routeInformationProvider: router.routeInformationProvider,
          locale: const Locale('id', 'ID'),
        ));
  }
}
