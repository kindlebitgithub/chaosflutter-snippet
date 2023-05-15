import 'dart:convert';
import 'package:chaos/Chaos_Screens/Utilities/service_provider.dart';

import '../../Models/sign_up_role_model.dart';
import 'package:http/http.dart'as http;
String role = "Select Role";
List<String> roleType = [
  "Select Role",
];
RoleModel? roleModel;
class GetRoleDatas {
   static Future<RoleModel?> getRoleData() async{
    var url = ServiceProvider.baseURL+"auth/roles";
    var uri =Uri.parse(url);
    var response = await http.get(uri);
    print(response.body);
    if(response.statusCode==200){
      var res = RoleModel.fromJson(json.decode(response.body));
      //setState(() {
        roleModel=res;
      //});
      roleType.clear();
      roleType = [
      ];
      for (var cat in roleModel!.data!.roles!) {
        roleType.add(cat.name!);
      }
      print("roletype $getRoleData");
    }else{
      throw Exception("Field to get role Data");
    }
    return null;
  }
}