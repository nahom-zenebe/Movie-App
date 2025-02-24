import 'package:mockito/mockito.dart';
import 'package:myapp/domain/entities/Movie.dart';
import 'package:myapp/domain/repositories/movie_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class  MockMovieRepository extends Mock implements MovieRepository{


}
void main() {

  late MockMovieRepository mockMovieRepository;
  late GetTrendingMovies usecase;

  setUp((){
    mockMovieRepository=MockMovieRepository();
    usecase = GetTrendingMovies(mockMovieRepository) ;
    });

    final tMoviesList=[
    Movies(id: 1, title: "Test1", Overview: "desc 1", posterPath: "/ap/mdk"),
    Movies(id: 2, title: "Test2", Overview: "desc 2", posterPath: "/ap/erk"),
    Movies(id: 3, title: "Test3", Overview: "desc 3", posterPath: "/ap/wek")
    
    
    
    ];

 ];

  test("should get trending movies", () async {
    // Arrange: Set up the mock response
    when(mockMovieRepository.getTrendingMovies())
        .thenAnswer((_) async => tMoviesList);

    // Act: Call the use case
    final result = await usecase();


    expect(result, tMoviesList);
    verify(mockMovieRepository.getTrendingMovies());
    verifyNoMoreInteractions(mockMovieRepository);

  });
}
