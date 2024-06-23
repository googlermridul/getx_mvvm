import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:getx_mvvm/data/app_exception.dart';
import 'package:getx_mvvm/data/network/base_api_service.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiService {
  @override
  Future getApi(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw NetworkException('No Internet Connection');
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  @override
  Future postApi(var data, String url) async {
    print("data: --------------------> $data");
    print("url: --------------------> $url");

    dynamic responseJson;
    try {
      final response = await http
          .post(
            Uri.parse(url),
            body: data,
            // body: jsonEncode(data),
          )
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw NetworkException('No Internet Connection');
    }
    print("api response: --------------------> $responseJson");

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while communication with server with status code : ${response.statusCode}');
    }
  }
}
