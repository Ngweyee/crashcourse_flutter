import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import '../endpoint.dart';
import './location_fact.dart';
import 'package:http/http.dart' as http;
part 'location.g.dart';

@JsonSerializable()
class Location {
  final int id;
  final String name;
  final String url;
  final List<LocationFact> facts;
  Location({required this.id, required this.name, required this.url, required this.facts});


  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static Future<List<Location>> fetchAll() async{
    var uri = Endpoint.uri('/locations');

    final response = await http.get(uri);
    // Await the http get response, then decode the json-formatted response.
    if (response.statusCode != 200) {
      throw (response.body);
    }
    List<Location> locations = [];
    for (var jsonItem in json.decode(response.body)){
      locations.add(Location.fromJson(jsonItem));
    }
    return locations;
  }

  static Future<Location> fetchById(int id) async{
    var uri = Endpoint.uri('/locations/$id');

    final response = await http.get(uri);
    // Await the http get response, then decode the json-formatted response.
    if (response.statusCode != 200) {
      throw (response.body);
    }

    final Map<String, dynamic> itemMap = json.decode(response.body);
    return Location.fromJson(itemMap);
  }
}