import 'package:flutter/material.dart';

class MessagingScreen extends StatefulWidget {
  const MessagingScreen({Key? key}) : super(key: key);

  @override
  State<MessagingScreen> createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
 // bool isAvailable = false;
  bool isAvailable = true;
  @override
  Widget build(BuildContext context) {
    if (isAvailable) {
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "No Contacts added",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const Icon(Icons.no_accounts_rounded, size: 200, color: Colors.grey,),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)
                )
              )
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("Add contact", style: TextStyle(fontSize: 20),),
                  SizedBox(width: 12,),
                  Icon(Icons.add_circle_outline_rounded, size: 26,)
                ],
              ),
            ),
          ),
          // const Text(
          //   "Tap the button below to add contacts.",
          //   style: TextStyle(color: Colors.blueGrey),
          // ),
          // Container(
          //   alignment: Alignment.topLeft,
          //   child: FloatingActionButton(
          //     onPressed: () {},
          //     child: const Icon(Icons.add),
          //   ),
          // ),
        ],
      ),
    );
  }
}
