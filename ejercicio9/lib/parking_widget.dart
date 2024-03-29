import 'dart:convert';
import 'package:ejercicio9/parking_card.dart';
import 'package:http/http.dart' as http;
import 'package:skeletonizer/skeletonizer.dart';
import 'package:ejercicio9/parking_response/result.dart';
import 'package:flutter/material.dart';

class ParkingWidget extends StatefulWidget {
  const ParkingWidget({super.key});

  @override
  State<ParkingWidget> createState() => _ParkingWidgetState();
}

class _ParkingWidgetState extends State<ParkingWidget> {
  late Future<List<Parking>> result;
  bool enabled = true;

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
            enabled = false;
            return Skeletonizer(
              enabled: enabled,
              child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ParkingCard(parking: snapshot.data![index]));
                  }),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }

  Future<List<Parking>> getData() async {
    final response = await http.get(Uri.parse(
        'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/parkings/records?limit=100'));
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      List<dynamic> data = jsonData['results'];
      List<Parking> parkingList = data.map((e) => Parking.fromJson(e)).toList();
      return parkingList;
    }

    return result;
  }
}
