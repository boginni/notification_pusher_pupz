import 'package:flutter/material.dart';

import 'app/ui/notification_pusher/notification_pusher_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple);

    return MaterialApp(
      title: 'Pupz Notification Pusher',
      theme: ThemeData(
        colorScheme: colorScheme,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: colorScheme.surfaceVariant,
          hoverColor: colorScheme.primaryContainer,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const NotificationPusherPage(),
    );
  }
}
