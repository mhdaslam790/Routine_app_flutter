import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_template/app_localizations.dart';
import 'package:flutter_template/application/routine/routine_bloc.dart';

import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/injection.dart';
import 'package:flutter_template/presentation/core/theme/theme.dart';
import 'package:flutter_template/presentation/core/widgets/life_cycle_watcher.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return getIt<RoutineBloc>()
              ..add(const RoutineEvent.getData())
              ..add(RoutineEvent.setHeadingDate(date: DateTime.now()));
          },
        ),
      ],
      child: BlocBuilder<RoutineBloc, RoutineState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            title: AppConstants.appName,
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: ThemeData(fontFamily: 'Euclid Circular B'),
            darkTheme: AppTheme.dark,
            locale: AppConstants.supportedLocales[0],
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            localeResolutionCallback: (locale, supportedLocales) {
              for (final supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale!.languageCode &&
                    supportedLocale.countryCode == locale.countryCode) {
                  return supportedLocale;
                }
              }
              return supportedLocales.first;
            },
          );
        },
      ),
    );
  }
}
