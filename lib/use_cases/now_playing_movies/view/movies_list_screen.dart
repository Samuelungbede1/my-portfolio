import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/app_color_palette.dart';
import '../../home/widgets/list_view_card.dart';
import '../../now_playing_movies/controller/movie_list_controller.dart';

class MoviesListScreen extends StatefulWidget {
  const MoviesListScreen({
    super.key,
  });

  @override
  State<MoviesListScreen> createState() => _MoviesListScreenState();
}

class _MoviesListScreenState extends State<MoviesListScreen> {
  final MovieListController movieListController =
  Get.put(MovieListController(), permanent: true);
  String backDrop = "https://image.tmdb.org/t/p/w185";


  @override
  void initState() {
     movieListController.getNowPlayingMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(()=>
      Scaffold(
        backgroundColor: AppColorPalette.bgColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: StaggeredGridView.countBuilder(
            scrollDirection: Axis.vertical,
            itemCount: movieListController.results.length, //
            itemBuilder: (BuildContext context, int index) {
              return  ListViewCard(
                imageUrl:   "$backDrop${movieListController.results[index].backdropPath!}"  ,
                subtitle: movieListController.results[index].title!,
                releaseDate: movieListController.results[index].releaseDate!,
              );
            },
            crossAxisCount: 4,
            staggeredTileBuilder: (int index) => StaggeredTile.count(2,index.isEven? 3 :2),
            mainAxisSpacing: 10.0, // Adjust spacing as needed
            crossAxisSpacing: 10.0, // Adjust spacing as needed                ),
          ),
        ),
      ),
    );
  }
}
