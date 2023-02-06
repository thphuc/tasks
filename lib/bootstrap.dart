import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tasks/app/app_observer.dart';
import 'package:tasks/env/env.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  initializeApp();

  // TODO: Enable this code again when the issue is solved
  // https://github.com/flutter/flutter/issues/34499
  // FlutterError.onError = (details) {
  //   AppLogger.instance.e(details.exceptionAsString());
  // };

  late Directory appDocDirectory;
  if (!kIsWeb) {
    appDocDirectory = await getApplicationDocumentsDirectory();
  }

  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : Directory('${appDocDirectory.path}/bumbii'));
  runApp(await builder());

  Bloc.observer = AppBlocObserver();
}

/// Do all initialization here (Firebase, env, Parse...)
Future<void> initializeApp() async {
  // Load variables from .env
  await dotenv.load(fileName: getConfigEnvFile());
}
