import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/event_card.dart';
import 'package:flutter_application_1/models/event.dart';

class HomeScreen extends StatelessWidget {
  final List<Event> events = [
    Event(
        name: "Event 1", location: "Location1", startDateTime: DateTime.now()),
    Event(
        name: "Event 2", location: "Location2", startDateTime: DateTime.now()),
    Event(
        name: "Event 3", location: "Location3", startDateTime: DateTime.now()),
    Event(
        name: "Event 4", location: "Location4", startDateTime: DateTime.now()),
    Event(
        name: "Event 5", location: "Location5", startDateTime: DateTime.now()),
    Event(name: "Event 6", location: "Location6", startDateTime: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Flutter Test"),
          centerTitle: true,
          backgroundColor: Colors.grey[900]),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(40),
          reverse: false,
          itemCount: events.length,
          itemBuilder: (_, index) => EventCard(event: events[index])),
      floatingActionButton: FloatingActionButton(
          child: Text("Add"),
          backgroundColor: Colors.grey[900],
          onPressed: null),
    );
  }
}
