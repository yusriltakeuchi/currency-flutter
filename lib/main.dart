import 'package:currency/core/viewmodels/dompet_provider.dart';
import 'package:currency/core/viewmodels/rekening_provider.dart';
import 'package:currency/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => RekeningProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DompetProvider(),
        )
      ],
      child: MaterialApp(
        title: "Currency",
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}