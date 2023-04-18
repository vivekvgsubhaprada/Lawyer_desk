import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer_desk/firebase_options.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      title: "Lawyer Desk",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.amber,
      ),
    ),
  );
}
