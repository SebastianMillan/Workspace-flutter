import 'dart:convert';
import 'dart:js_interop';

import 'package:ejercicio12/models/font_list_response/font_list_response.dart';
import 'package:ejercicio12/models/font_list_response/result.dart';
import 'package:ejercicio12/widgets/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FontWidget extends StatefulWidget {
  const FontWidget({super.key});

  @override
  State<FontWidget> createState() => _FontWidgetState();
}

class _FontWidgetState extends State<FontWidget> {
  late Future<List<Result>> result;

  @override
  void initState() {
    super.initState();
    result = getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: result,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MapWidget(
              listFonts: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return const Center(child: CircularProgressIndicator());
        });
  }

  Future<List<Result>> getData() async {
    final response = await http.get(Uri.parse(
        'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/fonts-daigua-publica-fuentes-de-agua-publica/records?limit=20'));

    if (response.statusCode == 200) {
      FontListResponse fontListResponse =
          FontListResponse.fromJson(response.body);
      return fontListResponse.results!;
    }
    return result;
  }
}
