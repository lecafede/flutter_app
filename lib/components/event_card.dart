import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/event.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key key,
    @required this.event,
  }) : super(key: key);

  final Event event;

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isEnabled = true;

  @override
  void initState() {
    super.initState();
    print("init State");
  }

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Card(
      color: _isEnabled ? Colors.red[300] : Colors.green[300], // ЦВЕТ КАРТОЧКИ
      elevation: 10,
      shadowColor: Colors.lightBlueAccent,
      margin: EdgeInsets.symmetric(vertical: 7),
      child: ListTile(
        enabled: _isEnabled,
        title: Text(widget.event.name, style: TextStyle(fontSize: 20)),
        subtitle: Text(
            "${widget.event.location} ${widget.event.startDateTime.toString()}"),
        leading: Icon(
          Icons.local_activity,
          size: 40,
        ),
        trailing: IconButton(
          icon: _isEnabled
              ? Icon(Icons.lock_outline)
              : Icon(Icons
                  .lock_open), // ПРИ НАЖАТИИ НА ЗАМОК МЕНЯЕТСЯ ЦВЕТ И ИКОНКА ЗАМКА
          onPressed: () => setState(() => _isEnabled = !_isEnabled),
        ),
        onTap: () => print("${widget.event.name} - tap"),
        onLongPress: () => print("${widget.event.name} - longPress"),
      ),
    );
  }
}
