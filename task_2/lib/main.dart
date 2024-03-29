import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2/Constants/app_colors.dart';
import 'package:task_2/Controllers/task_provider.dart';
import 'package:task_2/Screens/Home/tasks_page.dart';
import 'package:task_2/Screens/svg_listview.dart';

import 'Screens/Create Task/add_task_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => TaskProvider())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.background,
            primaryColor: AppColors.accentDark,
            colorScheme: const ColorScheme.dark(primary: AppColors.accent),
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: AppColors.primaryText,
                  displayColor: AppColors.primaryText,
                ),
          ),
          initialRoute: '/todo',
          routes: {
            '/home': (context) => const HomePage(),
            '/todo': (context) => const TodoPage(),
            '/addTask': (context) => const AddTask(),
          }),
    );
  }
}
