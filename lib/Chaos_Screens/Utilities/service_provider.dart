import 'dart:convert';
import 'package:chaos/Chaos_Screens/AuthenticationView/login_Screen.dart';
import 'package:chaos/Chaos_Screens/Utilities/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ServiceProvider {
  static String baseURL = "https://api.thechaosapp.com/api/";
  static String baseURLImages = "https://api.thechaosapp.com/";

  // static String baseURL = "http://54.144.156.206/public/api/";
  // static String baseURLImages = "http://54.144.156.206/public/";

  static Future<Response?> apiCall(
      String end_pont, BuildContext context) async {
    await EasyLoading.show(
      // status: 'Wait',
      indicator: Image.asset(
        "images/loading_anim.gif",
        height: 60.0,
        width: 30.0,
      ),
      maskType: EasyLoadingMaskType.black,
    );
    Response? responseNew;

    try {
      var uri = Uri.parse(baseURL + end_pont);
      var response = await http.get(uri, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${SharedPref.access_token}',
      });

      var jsonData = jsonDecode(response.body);
      print(jsonData['error']);
      if (response.statusCode == 200) {
        responseNew = response;
      } else if (response.statusCode == 401 || response.statusCode == 405) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LoginScreen()),
                (route) => false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("You need to login again."),
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.all(30.0),
            backgroundColor: Colors.red.shade700,
            duration: Duration(seconds: 2),
          ),
        );

        print(response.statusCode);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(jsonData['error']),
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.all(30.0),
            backgroundColor: Colors.red.shade700,
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please try again..!"),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(30.0),
          backgroundColor: Colors.red.shade700,
          duration: Duration(seconds: 2),
        ),
      );
    }
    await EasyLoading.dismiss();
    return responseNew;
  }
}
