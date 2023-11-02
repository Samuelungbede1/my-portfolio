import '../dates/Dates.dart';
import '../movie/Movie.dart';

class NowPlaying {
  Dates? dates;
  int? page;
  List<Results>? results;
  int? totalPages;
  int? totalResults;

  NowPlaying(
      {this.dates,
        this.page,
        this.results,
        this.totalPages,
        this.totalResults});




  NowPlaying.fromJson(Map<String, dynamic> json) {
    dates = json['dates'] != null ? Dates.fromJson(json['dates']) : null;
    page = json['page'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  static getNowPlayingMovieList(List<dynamic>? json){
    List<Map<String, dynamic>> nowPlayingMovies = List<Map<String,dynamic>>.from(json ?? []);
    return List.generate(nowPlayingMovies.length, (index) => NowPlaying.fromJson(nowPlayingMovies[index]));
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dates != null) {
      data['dates'] = dates!.toJson();
    }
    data['page'] = page;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = totalPages;
    data['total_results'] = totalResults;
    return data;
  }
}


