import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tasks/app/cubit/app_cubit.dart';
import 'package:tasks/app/cubit/app_state.dart';
import 'package:tasks/enum/app_languages.dart';
import 'package:tasks/enum/app_theme.dart';
import 'package:tasks/generated/l10n.dart';
import 'package:tasks/router/router.dart';
import 'package:tasks/theme/app_themes.dart';
import 'package:tasks/utils/locale_utils.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          final FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus && currentFocus.hasFocus) {
            // Hide keyboard
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: BlocProvider<AppCubit>(
          create: (context) =>
              AppCubit(appTheme: AppTheme.kids, appLanguage: AppLanguage.vi),
          child: BlocBuilder<AppCubit, AppState>(
            builder: (ctx, state) {
              final Locale locale =
                  getAppLocale(appLanguage: state.appLanguage);
              return MaterialApp.router(
                color: appThemes[state.appTheme]?.primaryColor,
                useInheritedMediaQuery: true,
                debugShowCheckedModeBanner: false,
                theme: appThemes[state],
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                locale: locale,
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: child!,
                  );
                },
                routerDelegate: router.routerDelegate,
                routeInformationParser: router.routeInformationParser,
                routeInformationProvider: router.routeInformationProvider,
              );
            },
          ),
        ));
  }
}
