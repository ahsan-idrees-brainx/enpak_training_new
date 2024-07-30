import 'package:enpak_training_new/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginProvider with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> login(String username, String password) async {
    _isLoading = true;
    notifyListeners();

    final url = Uri.parse(Constants.auth_url); // Replace with your API URL
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      // Handle successful login
      final responseData = json.decode(response.body);
      print(responseData);
    } else {
      // Handle login failure
      print('Login failed');
    }

    _isLoading = false;
    notifyListeners();
  }
}
