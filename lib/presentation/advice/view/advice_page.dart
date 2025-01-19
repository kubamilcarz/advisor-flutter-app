import 'package:advisor/presentation/core/services/theme_service.dart';
import 'package:advisor/presentation/core/widgets/custom_button.dart';
import 'package:advisor/presentation/core/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Advice', style: themeData.textTheme.headlineMedium),
        centerTitle: true,
        actions: [
          Switch(
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged: (_) {
              Provider.of<ThemeService>(context).toggleTheme();
            },
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: ErrorMessage(message: 'Oops! Something went wrong!'),
                /*const AdviceField(advice: 'example advice yo'),*/
                /*CircularProgressIndicator(
                  color: themeData.colorScheme.secondary,
                ),*/
                /*Text(
                  'Your advice is waiting for you!',
                  style: themeData.textTheme.headlineSmall,
                ),*/
              ),
            ),
            SizedBox(
              height: 200,
              child: Center(
                child: CustomButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
