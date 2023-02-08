import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/src/bloc/create_customer_cubit/create_customer_cubit.dart';
import 'package:test_app/src/bloc/get_customer_cubit/get_customer_cubit.dart';

import 'src/bloc/bus_cubit/bus_cubit.dart';
import 'src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BusCubit()..loadBuses(),
        ),
        BlocProvider(
          create: (context) => CreateCustomerCubit(),
        ),
        BlocProvider(
          create: (context) => GetCustomerCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Test App',
        home: HomePage(),
      ),
    );
  }
}
