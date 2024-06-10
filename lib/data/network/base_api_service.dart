abstract class BaseApiService {
  final String BASE_URL = "https://itunes.apple.com/search?term=";

  Future<dynamic> getApi(String url);

  Future<dynamic> postApi(dynamic data, String url);
}
