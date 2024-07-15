import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

Future<RegisterUser> createUser(
    String name, String email, String password) async {
  var uri = Uri.parse('http://127.0.0.1:8000/api/create');
  //var uri = Uri.http('127.0.0.1:8000/api/create');
  final response = await http.post(uri);
  header: <String, String>{'Content-Type': 'application/json'};
  body: jsonEncode(<String, String>{
    "name": name,
    "email": email,
    "password": password,
  });
  if (response.statusCode == 200) {
    return RegisterUser.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to create user');
  }
}

class RegisterUser {
  late String name;
  late String email;
  late String password;

  RegisterUser(
    this.name,
    this.email,
    this.password,
  );

  factory RegisterUser.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'name': String name,
        'email': String email,
        'password': String password
      } =>
        RegisterUser(name, email, password),
      _ => throw const FormatException('Failed to load user details'),
    };
  }
}


// class CallRegisterAPI {
//   Map<String, String> headers = {"content-Type": "application/json"};
//   Future<http.Response> registerUser(
//     String name,
//     String email,
//     String password,
//   ) async {
//     Map data = {
//       "name": name,
//       "email": email,
//       "password": password,
//     };
//     var body = json.encode(data);
//     var url = Uri.parse('http://127.0.0.1:8000/api/create');
//     http.Response response = await http.post(
//       url,
//       headers: headers,
//       body: body,
//     );
//     print(response.body);
//     return response;
//   }

//   Future<http.Response> login(
//     String email,
//     String password,
//   ) async {
//     Map data = {
//       "email": email,
//       "password": password,
//     };
//     var body = json.encode(data);
//     var url = Uri.parse('http://127.0.0.1:8000/api/login');
//     http.Response response = await http.post(
//       url,
//       headers: headers,
//       body: body,
//     );
//     print(response.body);
//     return response;
//   }
// }


//   //final baseUrl = 'http://127.0.0.1:8000/api/create';


//   // Future<List> getUserRegistered() async {
//   //   try {
//   //     var response = await http.get(Uri.parse(baseUrl));
//   //     if (response.statusCode == 200) {
//   //       return jsonDecode(response.body);
//   //     } else {
//   //       return Future.error("Server Error");
//   //     }
//   //   } catch (e) {
//   //     return Future.error(e);
//   //   }
//   // }
//   // postData(data) async {
//   //   return await http.post(baseUrl, body: jsonEncode(data), headers: _setHeaders());
//   // }

//   // _getData(apiUrl) async {
//   //   return await http.get(baseUrl, headers: _setHeaders());
//   // }

//   // _setHeaders() => {
//   //       'Content-type': 'application/json',
//   //       'Accept': 'application/json',
//   //     };
