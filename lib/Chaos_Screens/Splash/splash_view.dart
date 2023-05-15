import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../HomeScreen/bottom_nav_view.dart';
import '../Utilities/get_role_apis.dart';
import '../Utilities/shared_pref.dart';
import '../Welcome_Screen/welcome_screen.dart';
import 'dart:io' show Platform;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Firebase.initializeApp();
    setupInteractedMessage();
    getToken();
    getDeviceType();
    GetRoleDatas.getRoleData();
    Timer(const Duration(seconds: 3), () {
      if (SharedPref.access_token == "") {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const WelcomeView()),
            (route) => false);
      } else {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const BottomBar()),
            (route) => false);
      }
    });
    FirebaseMessaging.instance.getToken().then((value) async {
      print("device token is $value");
      SharedPref.device_Token = value.toString();
      SharedPreferences preps = await SharedPreferences.getInstance();
      preps.setString("device_Token", value.toString());
    });
    super.initState();
  }

  getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    SharedPref.access_token = prefs.getString("access_token")!;
    SharedPref.uiTYPE = prefs.getString("uiTYPE")!;
    SharedPref.checkInternet = prefs.getString("checkInternet")!;
    SharedPref.device_Type = prefs.getString("device_Type")!;
    SharedPref.device_Token = prefs.getString("device_Token")!;
    SharedPref.family_name = prefs.getString("family_name")!;
    SharedPref.name = prefs.getString("name")!;
    SharedPref.google_token = prefs.getString("google_token")!;

    SharedPref.driverId = prefs.getInt("driverId")!;
    SharedPref.driverTypeId = prefs.getInt("driverTypeId")!;
    SharedPref.riderID = prefs.getInt("riderID")!;
    SharedPref.event = prefs.getInt("event")!;
    SharedPref.eventType = prefs.getInt("eventType")!;
    SharedPref.whoId = prefs.getInt("whoId")!;
    SharedPref.groupId = prefs.getInt("groupId")!;
    SharedPref.dropWho = prefs.getString("dropWho")!;
    SharedPref.dropDriver = prefs.getString("dropDriver")!;
    SharedPref.dropDriverType = prefs.getString("dropDriverType")!;
    SharedPref.dropRider = prefs.getString("dropRider")!;
    SharedPref.dropRiderType = prefs.getString("dropRiderType")!;
    SharedPref.dropEvent = prefs.getString("dropEvent")!;
    SharedPref.dropEventType = prefs.getString("dropEventType")!;
    SharedPref.adultS = prefs.getString("adultS")!;
    SharedPref.groups = prefs.getString("groups")!;
    SharedPref.where = prefs.getString("where")!;
    SharedPref.whenDateCtr = prefs.getString("whenDateCtr")!;
    SharedPref.endEvent = prefs.getString("endEvent")!;
    SharedPref.location = prefs.getString("location")!;
  }

  getDeviceType() async {
    if (Platform.isAndroid) {
      if (kDebugMode) {
        print("Android");
      }
      SharedPref.device_Type = "Android";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('deviceType', "Android");
    } else if (Platform.isIOS) {
      if (kDebugMode) {
        print("IOS");
      }
      SharedPref.device_Type = "IOS";
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('deviceType', "IOS");
    } else {
      if (kDebugMode) {
        print('Other platform');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: SvgPicture.asset(
                "images/Splash.svg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }
    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    print(message.data.toString());
  }
}
