import 'dart:convert';

import 'package:ejercicio10/models/account_detail_response/account_detail_response.dart';
import 'package:ejercicio10/models/request_token_response.dart';
import 'package:ejercicio10/models/session_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountWidget extends StatefulWidget {
  const AccountWidget({super.key});

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  late Future<String> reqTok;
  final tmdbApiKey = 'c69873949130194e8bc389f3e0cf7420';
  late Future<AccountDetailResponse> result;
  bool enabled = true;

  @override
  void initState() {
    super.initState();
    reqTok = getRequestToken();
    result = getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: result,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(
              snapshot.data!.name!,
              style: const TextStyle(color: Colors.white),
            );
          } else {
            return Center(
                child: Text(
              snapshot.error.toString(),
              style: TextStyle(color: Colors.white),
            ));
          }
        });
  }

  Future<String> getRequestToken() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/authentication/token/new?api_key=$tmdbApiKey'));
    if (response.statusCode == 200) {
      RequestTokenResponse requestToken =
          RequestTokenResponse.fromJson(response.body);
      await launchUrl(Uri.parse('https://www.themoviedb.org/authenticate/' +
          requestToken.requestToken!));
      return requestToken.requestToken!;
    }
    return "";
  }

  void getSessionId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.post(
        Uri.parse('https://api.themoviedb.org/3/authentication/session/new'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"request_token": reqTok}));
    if (response.statusCode == 200) {
      SessionResponse session = SessionResponse.fromJson(response.body);
      await prefs.setString('sessionId', session.sessionId!);
    }
  }

  Future<AccountDetailResponse> getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/account?session_id=' +
            prefs.getString('sessionId')!));

    if (response.statusCode == 200) {
      AccountDetailResponse profileResponse =
          AccountDetailResponse.fromJson(response.body);
      return profileResponse;
    }
    return result;
  }
}
