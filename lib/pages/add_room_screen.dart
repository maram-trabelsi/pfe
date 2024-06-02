// add_room_screen.dart
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class AddRoomScreen extends StatefulWidget {
  @override
  _AddRoomScreenState createState() => _AddRoomScreenState();
}

class _AddRoomScreenState extends State<AddRoomScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _rooms = [];

  void addRoom(String roomName) {
    final DatabaseReference ref = FirebaseDatabase.instance.ref('rooms').push();
    ref.set({
      'name': roomName,
      'devices': {}
    }).then((_) {
      setState(() {
        _rooms.add(roomName);
        _controller.clear();
      });
      print("Room added successfully");
    }).catchError((error) {
      print("Failed to add room: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('ajouter une piéce'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'nom de piéce',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                        fixedSize: Size(140, 20),
                         backgroundColor: (Colors.black),
                        foregroundColor: ( Colors.white),
                        side: BorderSide(color:Color(0xff24b273),width:1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
              onPressed: () {
                String roomName = _controller.text;
                if (roomName.isNotEmpty) {
                  addRoom(roomName);
                } else {
                  print("Room name cannot be empty");
                }
              },
              child: Text('Add Room'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _rooms.length,
                itemBuilder: (context, index) {
                  return RoomButton(roomName: _rooms[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoomButton extends StatelessWidget {
  final String roomName;

  const RoomButton({Key? key, required this.roomName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(roomName),
      onTap: () {
        // Add your logic here for what should happen when the room button is tapped
      },
    );
  }
}
