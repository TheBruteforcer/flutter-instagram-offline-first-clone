import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_instagram_offline_first_clone/app/app.dart';
import 'package:flutter_instagram_offline_first_clone/l10n/l10n.dart';
import 'package:flutter_instagram_offline_first_clone/selector/selector.dart';
import 'package:shared/shared.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final routerConfig = AppRouter(context.read<AppBloc>()).router;

    return BlocBuilder<LocaleBloc, Locale>(
      builder: (context, locale) {
        WidgetsBinding.instance.addPostFrameCallback(
          (_) => LocaleSettings.setLocaleRaw(locale.languageCode),
        );
        return BlocBuilder<ThemeModeBloc, ThemeMode>(
          builder: (context, themeMode) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 350),
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaler: TextScaler.noScaling,
                ),
                child: MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  title: 'Instagram',
                  routerConfig: routerConfig,
                  builder: (context, child) {
                    WidgetsBinding.instance.addPostFrameCallback(
                      (_) => initUtilities(context, locale),
                    );

                    return Stack(
                      children: [
                        if (child != null) child,
                        AppSnackbar(key: snackbarKey),
                        AppLoadingIndeterminate(key: loadingIndeterminateKey),
                      ],
                    );
                  },
                  themeMode: themeMode,
                  theme: const AppTheme().theme,
                  darkTheme: const AppDarkTheme().theme,
                  locale: locale,
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: AppLocalizations.supportedLocales,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
