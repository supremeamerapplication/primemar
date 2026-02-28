// main.dart
// entry point for PrimeMar app

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/config.dart';
import 'core/theme/theme_provider.dart';
import 'core/theme/light_theme.dart';
import 'core/theme/dark_theme.dart';
import 'core/constants/routes.dart';
import 'features/messages/messages_screen.dart';
import 'features/notifications/notifications_screen.dart';
import 'features/profile/profile_screen.dart';
import 'features/comments/comments_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: AppConfig.supabaseUrl,
    anonKey: AppConfig.supabaseAnonKey,
  );

  runApp(const ProviderScope(child: PrimeMarApp()));
}

class PrimeMarApp extends ConsumerWidget {
  const PrimeMarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeProvider = ref.watch(themeProvider.notifier);
    return MaterialApp(
      title: 'PrimeMar',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ref.watch(themeProvider).mode,
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (context) => const Scaffold(body: Center(child: Text('Loading...'))),
        Routes.messages: (context) => MessagesScreen(),
        Routes.notifications: (context) => NotificationsScreen(),
        Routes.profile: (context) => ProfileScreen(),
        Routes.comments: (context) => CommentsScreen(),
      },
    );
  }
}
