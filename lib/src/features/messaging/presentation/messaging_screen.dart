import 'package:flutter/material.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          const SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                filled: true,
                fillColor: Colors.deepPurpleAccent[100],
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)
                ),
              ),
            ),
          ),
          const SizedBox(height: 12,),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.account_circle_rounded, size: 36,),
            ),
            title: Text("Jonathan Doe"),
            subtitle: Text("last chat: a week ago"),
            trailing: Icon(Icons.more_vert_rounded),
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.account_circle_rounded, size: 36,),
            ),
            title: Text("Nnamdi Olusegun Ahmad"),
            subtitle: Text("last chat: 2 weeks ago"),
            trailing: Icon(Icons.more_vert_rounded),
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.account_circle_rounded, size: 36,),
            ),
            title: Text("Janet Doey"),
            subtitle: Text("last chat: 3 hrs ago"),
            trailing: Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
    );
  }
}
