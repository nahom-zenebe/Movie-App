import 'package:myapp/domain/entities/Movie.dart';

abstract class MovieRepository {
  Future<List<Movies>> getTrendingMovies();  // Corrected method signature
  Future<List<Movies>> getPopularMovies();   // Corrected method signature
  Future<List<Movies>> searchMovies(String query);  // Corrected method signature
}
