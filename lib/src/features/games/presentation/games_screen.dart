import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:yaioa/src/features/games/blocs/games_blocs.dart';
import 'package:yaioa/src/features/games/blocs/games_events.dart';
import 'package:yaioa/src/features/games/data/repositories.dart';

import '../blocs/games_states.dart';
import '../domain/games_model.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GamesBloc(
        GamesRepository(),
      )..add(LoadGamesEvent()),
      child: BlocBuilder<GamesBloc, GamesState>(
        builder: (context, state) {
          if (state is GamesLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is GamesErrorState) {
            return const Center(child: Text("Error"),);
          }
          if (state is GamesLoadedState) {
            List<GamesModel> gamesList = state.games;
            return SingleChildScrollView(
              padding: const EdgeInsets.all(8),
              physics: const ScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search_rounded),
                      hintText: "Search",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(width: 2)),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.deepPurpleAccent,
                      ),
                      child: const Icon(Icons.ac_unit_outlined, size: 250,),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    itemCount: gamesList.length,
                      itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                        child: Card(
                          color: Theme.of(context).primaryColorLight,
                          child: ListTile(
                            title: Text(
                              '${gamesList[index].firstName}',
                              style: const TextStyle(color: Colors.black54),
                            ),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                gamesList[index].avatar.toString()),
                            ),
                          ),
                        ),
                      );
                      }),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}