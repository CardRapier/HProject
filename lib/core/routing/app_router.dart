import 'package:go_router/go_router.dart';
import 'package:h_project/core/routing/routes.dart';
import 'package:h_project/features/home/presentation/pages/custom_habit_form.dart';
import 'package:h_project/main.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyHomePage(),
      ),
      GoRoute(
        name: Routes.CustomHabit.name,
        path: Routes.CustomHabit.route,
        builder: (context, state) => const CustomHabitForm(),
      ),
    ],
    // Optionally define error handling and redirects
  );
}
