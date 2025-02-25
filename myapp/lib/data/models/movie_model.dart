class MovieModel {
  final int id;
  final String title;
  final String Overview;
  final String posterPath;

  MovieModel(
      {required this.id,
      required this.title,
      required this.Overview,
      required this.posterPath});

//convert json into string
  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
        id: json['id'],
        title: json['title'],
        Overview: json['Overview'],
        posterPath: json[' posterPath']);
  }

//convert string to json

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'Overview': Overview,
      posterPath: 'posterPath'
    };
  }
}
