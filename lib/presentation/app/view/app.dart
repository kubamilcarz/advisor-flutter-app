import 'package:advisor/presentation/advice/view/advice_page.dart';
import 'package:advisor/presentation/core/services/theme_service.dart';
import 'package:advisor/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const AdvicePage(),
        );
      },
    );
  }
}
