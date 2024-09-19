import 'package:fixarenda/src/features/investment/presentation/help_screen/help_screen.dart';
import 'package:fixarenda/src/features/selic_bacen/presentation/chart/selic_chart.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InvestmentListScreen extends StatelessWidget {
  const InvestmentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.goNamed(HelpScreen.route);
            },
            icon: Icon(
              Icons.help_outline,
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SelicChart(),
          ],
        ),
      ),
    );
  }
}
