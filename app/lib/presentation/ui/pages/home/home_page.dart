import 'package:app/main/init.dart';
import 'package:flutter/widgets.dart';
import 'package:app/presentation/ui/pages/home/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}
