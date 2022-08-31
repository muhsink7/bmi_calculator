import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/input_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(

        primaryColor: const Color(0xff0A0E21),
        scaffoldBackgroundColor: const Color(0xff0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
      ),
      home: const InputPage(),
    );
  }
}
