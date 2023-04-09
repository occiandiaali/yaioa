import 'package:flutter/material.dart';
import 'package:yaioa/src/features/bot/presentation/bot_screen.dart';
import 'package:yaioa/src/features/games/presentation/games_screen.dart';
import 'package:yaioa/src/features/market/presentation/market_screen.dart';
import 'package:yaioa/src/features/messaging/presentation/messaging_screen.dart';
import 'package:yaioa/src/features/tracker/presentation/tracker_screen.dart';

class AppTabs extends StatefulWidget {
  const AppTabs({Key? key}) : super(key: key);

  @override
  State<AppTabs> createState() => _AppTabsState();
}

class _AppTabsState extends State<AppTabs> {
  bool isActive = true;
  Color tabIconColour = Colors.white60;
  Color activeIconColour = Colors.amberAccent;
  int selectedIndex = 0;

  void changeIconColour(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: const Icon(Icons.ac_unit_outlined, size: 46,),
            actions: [
              if (selectedIndex == 1) const Icon(Icons.search_rounded, size: 26,),
              const SizedBox(width: 6,),
              const Icon(Icons.account_circle_rounded, size: 26,),
              const SizedBox(width: 12,),
              const Icon(Icons.logout, size: 20,),
              const SizedBox(width: 6,),
              if (selectedIndex == 0) const Icon(Icons.more_vert_rounded, size: 26,),
              const SizedBox(width: 6,),
            ],
            bottom: TabBar(
              onTap: changeIconColour,
              indicatorColor: Colors.amber,
              indicatorWeight: 4,
              tabs: [
                Tab(
                  icon: Icon(Icons.message_rounded, size: 24, color: selectedIndex == 0 ? activeIconColour : tabIconColour,),
                  child: Text("Chat", style: TextStyle(
                    color: selectedIndex == 0 ? activeIconColour : tabIconColour,
                      fontSize: 16),),
                ),
                Tab(
                  icon: Icon(Icons.shopping_bag_rounded, size: 24, color: selectedIndex == 1 ? activeIconColour : tabIconColour),
                  child: Text("Shop", style: TextStyle(
                      color: selectedIndex == 1 ? activeIconColour : tabIconColour,
                      fontSize: 16),),
                ),
                Tab(
                  icon: Icon(Icons.interests_rounded, size: 24, color: selectedIndex == 2 ? activeIconColour : tabIconColour),
                  child: Text("Bot", style: TextStyle(
                      color: selectedIndex == 2 ? activeIconColour : tabIconColour,
                      fontSize: 16),),
                ),
                Tab(
                  icon: Icon(Icons.track_changes_rounded, size: 24, color: selectedIndex == 3 ? activeIconColour : tabIconColour),
                  child: Text("Track", style: TextStyle(
                      color: selectedIndex == 3 ? activeIconColour : tabIconColour,
                      fontSize: 16),),
                ),
                Tab(
                  icon: Icon(Icons.games_rounded, size: 24, color: selectedIndex == 4 ? activeIconColour : tabIconColour),
                  child: Text("Play", style: TextStyle(
                      color: selectedIndex == 4 ? activeIconColour : tabIconColour,
                      fontSize: 16),),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              MessagingScreen(),
              const MarketScreen(),
              const BotScreen(),
              const TrackerScreen(),
              const GamesScreen()
            ],
          ),
        ));
  }
}
