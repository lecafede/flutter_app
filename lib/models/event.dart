class Event {
  String name;
  String location;
  DateTime startDateTime;

  Event({this.name, this.location, this.startDateTime}) {}
}

var e = Event(name: "e1", location: "l1", startDateTime: DateTime.now());
