import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:plant_doctor_app/pages/main_page.dart';
import 'package:plant_doctor_app/widgets/utils.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Doctor',
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: messengerKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MainPage(),
    );
  }
}
