import 'package:evently_app/config/language/manager/lang_provider.dart';
import 'package:evently_app/config/routes/app_routes.dart';
import 'package:evently_app/config/themeing/app_theme.dart';
import 'package:evently_app/config/themeing/manager/theme_provider.dart';
import 'package:evently_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>LanguageProvider()),
        ChangeNotifierProvider(create: (_)=>ThemeProvider()),
      ],
    child: const EventlyApp()),
  );
}

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale(languageProvider.currentLocal),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.intro,
      routes: AppRoutes.routes,
    );
  }
}
