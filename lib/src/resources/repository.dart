import 'dart:async';
import 'package:flutter_app_example_bloc/src/models/ItemModel.dart';
import 'package:flutter_app_example_bloc/src/models/trailer_model.dart';

import 'movie_api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<TrailerModel> fetchTrailers(int movieId) => moviesApiProvider.fetchTrailer(movieId);
}