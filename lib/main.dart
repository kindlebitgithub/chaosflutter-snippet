import 'dart:async';
import 'dart:io';

import 'package:chaos/Chaos_Screens/Splash/splash_view.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import 'Chaos_Screens/HomeScreen/bottom_nav_view.dart';
import 'Chaos_Screens/Utilities/shared_pref.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging message = FirebaseMessaging.instance;
  NotificationSettings settiing  = await message.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true
  );
  print("setting is ${settiing.authorizationStatus}");
  message.setForegroundNotificationPresentationOptions(alert: true,badge: true,sound: true);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print("message is ${message.data}");
    if(message.notification!=null){
      print("notification is  ${message.notification}");
    }
   /* showOverlayNotification((context) {
      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.w)),
        child: SafeArea(
          child: ListTile(
            leading: SizedBox.fromSize(
                size: const Size(40, 40),
                child: ClipOval(
                    child: Container(
                  color: Colors.black,
                ))),
            title: Text(message.notification!.title.toString()),
            subtitle: Text(message.notification!.body.toString()),
            trailing: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  OverlaySupportEntry.of(context)!.dismiss();
                }),
          ),
        ),
      );
    }, duration: Duration(milliseconds: 15000));*/
  });
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {




  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return OverlaySupport(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen(),
            builder: EasyLoading.init()),
      );
    }
    );
  }
}

