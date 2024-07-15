class Timeline {
  //int id;
  late String eventName;
  late String eventDate;
  late String eventBrief;

  Timeline(
    //required this.id,
    this.eventName,
    this.eventDate,
    this.eventBrief,
  );
  Timeline.fromJson(Map<String, dynamic> json) {
    eventName = json['eventName'];
    eventDate = json['eventDate'];
    eventBrief = json['eventBrief'];
  }
}
