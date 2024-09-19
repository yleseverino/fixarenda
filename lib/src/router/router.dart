import 'package:fixarenda/src/features/investment/presentation/help_screen/help_screen.dart';
import 'package:fixarenda/src/features/investment/presentation/investment_list_screen/investment_list_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum AppRouter {
  home,
  registerInvestment,
  help,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
          path: '/',
          name: AppRouter.home.name,
          builder: (context, state) => const InvestmentListScreen(),
          routes: [
            GoRoute(
              path: 'help',
              name: AppRouter.help.name,
              builder: (context, state) => const HelpScreen(),
            ),
          ])
    ],
  );
});
