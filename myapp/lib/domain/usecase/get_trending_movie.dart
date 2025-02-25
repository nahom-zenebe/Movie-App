import 'package:myapp/domain/repositories/movie_repository.dart';
import '../entities/Movie.dart';

class GetTrendingMovie {
  final MovieRepository repository;

  GetTrendingMovie(this.repository);

  Future<List<Movies>> call ()async {
    return await  repository.getTrendingMovies(

    );
  }
}
