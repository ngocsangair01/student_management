// To parse this JSON data, do
//
//     final sectionClass = sectionClassFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SectionClass sectionClassFromJson(String str) => SectionClass.fromJson(json.decode(str));

String sectionClassToJson(SectionClass data) => json.encode(data.toJson());

class SectionClass {
  SectionClass({
    required this.createdDate,
    required this.lastModifiedDate,
    required this.name,
    required this.numberOfUnit,
    required this.startTime,
    required this.endTime,
    required this.percents,
    required this.id,
    required this.createdBy,
    required this.lastModifiedBy,
  });

  final DateTime createdDate;
  final DateTime lastModifiedDate;
  final String name;
  final String numberOfUnit;
  final int startTime;
  final int endTime;
  final double percents;
  final int id;
  final dynamic createdBy;
  final dynamic lastModifiedBy;

  SectionClass copyWith({
    required DateTime createdDate,
    required DateTime lastModifiedDate,
    required String name,
    required String numberOfUnit,
    required int startTime,
    required int endTime,
    required double percents,
    required int id,
    dynamic createdBy,
    dynamic lastModifiedBy,
  }) =>
      SectionClass(
        createdDate: createdDate ?? this.createdDate,
        lastModifiedDate: lastModifiedDate ?? this.lastModifiedDate,
        name: name ?? this.name,
        numberOfUnit: numberOfUnit ?? this.numberOfUnit,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        percents: percents ?? this.percents,
        id: id ?? this.id,
        createdBy: createdBy ?? this.createdBy,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
      );

  factory SectionClass.fromJson(Map<String, dynamic> json) => SectionClass(
    createdDate: DateTime.parse(json["createdDate"]),
    lastModifiedDate: DateTime.parse(json["lastModifiedDate"]),
    name: json["name"],
    numberOfUnit: json["numberOfUnit"],
    startTime: json["startTime"],
    endTime: json["endTime"],
    percents: json["percents"],
    id: json["id"],
    createdBy: json["createdBy"],
    lastModifiedBy: json["lastModifiedBy"],
  );

  Map<String, dynamic> toJson() => {
    "createdDate": createdDate.toIso8601String(),
    "lastModifiedDate": lastModifiedDate.toIso8601String(),
    "name": name,
    "numberOfUnit": numberOfUnit,
    "startTime": startTime,
    "endTime": endTime,
    "percents": percents,
    "id": id,
    "createdBy": createdBy,
    "lastModifiedBy": lastModifiedBy,
  };
}
