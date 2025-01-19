import 'package:flutter/material.dart';

class AdviceField extends StatelessWidget {
  const AdviceField({
    required this.advice,
    super.key,
  });
  final String advice;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: themeData.colorScheme.secondary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: Text(
            advice,
            style: themeData.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
