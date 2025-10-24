import 'package:flutter/material.dart';

class NotifactionPage extends StatefulWidget {
  const NotifactionPage({super.key});

  @override
  State<NotifactionPage> createState() => _NotifactionPageState();
}

class _NotifactionPageState extends State<NotifactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10),
            child: Text('Today', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),

            Expanded(child: ListView(
              children: const [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/meta_logo.png"),
                  ),
                  title: Text("Learn how Meta will use your info in new ways to personalize your experiences."),
                  subtitle: Text("16h"),
                  trailing: Icon(Icons.more_vert),
                ),
                ListTile(
                  leading: 
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/facts_logo.png"),
                  ),
                  title: Text("5 Unknown Facts recently shared 1 post."),
                  subtitle: Text("20h"),
                  trailing: Icon(Icons.more_vert),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/fandango.png"),
                  ),
                  title: Text("Fandango posted a new reel: 'Diego Luna, Jennifer Lopez, and Tonatiuh star in #KissOfTheSpiderWoman, in theater..."),
                  subtitle: Text("2h"),
                  trailing: Icon(Icons.more_vert),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                  child: Text("Earlier", style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold,
                   ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/9gag.png"),
                  ),
                  title: Text("9GAG posted a new reel: 'White cat licks black cat'."),
                  subtitle: Text("1d"),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/alldefmusic_png"),
                  ),
                  title: Text("All def posted a new reel: #JimJones, #Fabolous & #Maino discuss being called an #OldYN!!!..."),
                  subtitle: Text("2d"),
                  trailing: Icon(Icons.more_vert),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/ladbible.png"),
                  ),
                  title: Text("LADbible posted a new reel: 'Cat saves baby form a wild leopard'"),
                  subtitle: Text("2d"),
                  trailing: Icon(Icons.more_vert),
                ),
              ],
            ),
            ),

            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Center(
                child: Text("See previous notifications", style: TextStyle(color:Colors.blue)),
              ),
            ),
          ],
        ),
      ),
    );
  } 
}