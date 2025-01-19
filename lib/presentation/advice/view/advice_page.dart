import 'package:advisor/presentation/advice/cubit/advice_bloc.dart';
import 'package:advisor/presentation/advice/view/widgets/advice_field.dart';
import 'package:advisor/presentation/core/services/theme_service.dart';
import 'package:advisor/presentation/core/widgets/custom_button.dart';
import 'package:advisor/presentation/core/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AdvicePageWrapperProvider extends StatelessWidget {
  const AdvicePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdviceBloc(),
      child: const AdvicePage(),
    );
  }
}

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: BlocBuilder<AdviceBloc, AdviceState>(
                  builder: (context, state) {
                    if (state is AdviceInitial) {
                      return Text(
                        'Your advice is waiting for you!',
                        style: themeData.textTheme.headlineSmall,
                      );
                    } else if (state is AdviceLoaded) {
                      return AdviceField(advice: state.advice);
                    } else if (state is AdviceStateError) {
                      return ErrorMessage(message: state.message);
                    } else if (state is AdviceStateLoading) {
                      return CircularProgressIndicator(
                        color: themeData.colorScheme.secondary,
                      );
                    } else {
                      return const ErrorMessage(
                        message: 'Oops! Something went wrong!',
                      );
                    }
                  },
                ),
              ),
            ),
            const SizedBox(
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
