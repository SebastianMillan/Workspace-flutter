import 'package:ejercicio10/models/people.dart';

class PeopleResponse {
  int? page;
  List<People>? results;
  int? totalPages;
  int? totalResults;

  PeopleResponse({this.page, this.results, this.totalPages, this.totalResults});

  PeopleResponse.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <People>[];
      json['results'].forEach((v) {
        results!.add(People.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['page'] = page;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }
}
