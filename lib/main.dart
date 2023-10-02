import 'package:flutter/material.dart';
import 'package:instagram/app/config/router/my_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      routerConfig: MyRouter.router(),
    );
  }
}
