class ApiRoutes {
  static const String BASE_URL = 'https://api.themoviedb.org/3';
  static const String languagePtBr = 'language=pt-BR';
  static const String languageEnUs = 'language=en-US';
  static const String image = 'https://image.tmdb.org/t/p/original';

  static const String trendingDay = '$BASE_URL/trending/all/day?$languagePtBr';
  static const String trendingWeek = '$BASE_URL/trending/all/week?$languagePtBr';
  static const String popular = '$BASE_URL/movie/popular?$languagePtBr';

  static const String detailsMovie = '$BASE_URL/movie/';
  static const String detailsTv = '$BASE_URL/tv/';
  
  static const String searchMulti = '$BASE_URL/search/multi?query=';

  static const API_KEY =
    'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxNDA2NThiYjljNTE1Nzg3ODAwODdlNDMzZjBlNmFmYyIsIm5iZiI6MTcyMDYxODM3Ni4wMjAwNDksInN1YiI6IjY2OGJmOGJkYTIwZGIzNWE5YWJhNWQ3YyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.C_L7gYKHlYu0kizEjNcpQ3sOar7geCdpNXjBV1E5f9I';
}
