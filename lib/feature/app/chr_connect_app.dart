import 'dart:ui';

import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:chrconnecthpdraft/feature/app/theme/app_theme.dart';
import 'package:chrconnecthpdraft/feature/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Main app widget in charge of creating [MaterialApp] along with localization delegates, routes and theme.
class CHRConnectApp extends StatelessWidget {
  const CHRConnectApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => context.localizations.chr_connect,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {
        PointerDeviceKind.mouse,
        ...const MaterialScrollBehavior().dragDevices
      }),
      home: const MainScreen(),
      theme: ThemeData(
        colorScheme: AppTheme.colorScheme,
        scaffoldBackgroundColor: AppTheme.colorScheme.background,
        textTheme: AppTheme.textTheme,
        textButtonTheme: AppTheme.textButtonTheme,
        chipTheme: AppTheme.chipTheme,
        iconTheme: AppTheme.iconTheme,
      ),
    );
  }
}
