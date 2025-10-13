import 'package:app/main/init.dart';
import 'package:app/presentation/ui/custom/app_theme_switch.dart';
import 'package:flutter/material.dart';

import '../../../../services/auth_service.dart';

class HomeView extends StatelessWidget {
  AuthService get _authService => getIt();

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => _authService.onLogout(),
            icon: const Icon(Icons.logout),
          ),
          const AppThemeSwitch(),
        ],
      ),
      body: const Center(child: Text('Home')),
    );
  }
}
