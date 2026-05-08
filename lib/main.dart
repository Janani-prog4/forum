import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/forum/presentation/screens/forum_home_screen.dart';

void main() {
  runApp(const ForumApp());
}

class ForumApp extends StatelessWidget {
  const ForumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Legacy Link Forum',
      theme: AppTheme.lightTheme,
      home: const ForumHomeScreen(),
    );
  }
}
