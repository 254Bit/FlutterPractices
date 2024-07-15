// import 'package:flutter/material.dart';

class TimelineCard {
  late String eventName;
  late String eventDate;
  late String eventBrief;
  // IconData icon;//

  TimelineCard(
    this.eventName,
    this.eventDate,
    this.eventBrief,
    // this.icon,
  );
  TimelineCard.fromJson(Map<String, dynamic> json) {
    eventName = json['eventName'];
    eventDate = json['eventDate'];
    eventBrief = json['eventBrief'];
  }
}
