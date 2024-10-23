import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jakone_pay/app/bloc_observer.dart';
import 'package:jakone_pay/app/config/environtment.dart';
import 'package:jakone_pay/app/main_app.dart';

void main() async {
  if (appFlavor == 'production') {
    ConfigEnvironments.setEnvironment(Environments.PRODUCTION);
  } else {
    ConfigEnvironments.setEnvironment(Environments.STAGING);
  }

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) async {
  
      Bloc.observer = const AppBlocObserver();
      runApp(const MainApp());
  });
}

