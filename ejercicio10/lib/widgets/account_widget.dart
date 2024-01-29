import 'package:ejercicio10/models/request_token_response.dart';
import 'package:ejercicio10/models/session_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AccountWidget extends StatefulWidget {
  const AccountWidget({super.key});

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  late String reqTok;
  final tmdbApiKey = 'c69873949130194e8bc389f3e0cf7420';
  bool enabled = true;

  @override
  void initState() {
    super.initState();
    reqTok = getRequestToken();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Future<String> getRequestToken() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3//authentication/token/new?api_key=$tmdbApiKey'));
    if (response.statusCode == 200) {
      RequestTokenResponse requestToken =
          RequestTokenResponse.fromJson(response.body);
      Uri.parse(
          'https://www.themoviedb.org/authenticate/$reqTok.requestToken!');
      return requestToken.requestToken!;
    }
    return "";
  }

  void getSessionId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3//authentication/token/new?api_key=$tmdbApiKey'));
    if (response.statusCode == 200) {
      SessionResponse session = SessionResponse.fromJson(response.body);
      await prefs.setString('sessionId', session.sessionId!);
      Uri.parse(
          'https://www.themoviedb.org/authenticate/$reqTok.requestToken!');
    }
  }
}
