import 'package:dio/dio.dart';

const _API_PREFIX = "https://jsonplaceholder.typicode.com/posts";

class Server {
  Future<void> getReq() async {
    Response response;
    Dio dio = Dio();
    response = await dio.get("$_API_PREFIX/1");
    print(response.data.toString());
  }

  Future<void> getReqAll() async {
    Response response;
    Dio dio = Dio();
    response = await dio.get(_API_PREFIX);
    print(response.data.toString());
  }

  Future<void> postReq() async {
    Response response;
    Dio dio = Dio();
    response = await dio.post(
      _API_PREFIX,
      data: {
        "id": 12,
        "name": "May the FORCE be with you!",
      },
    );
    print(response.data.toString());
  }

  Future<void> postReqWithMap() async {
    Response response;
    Dio dio = Dio();
    Map<String, dynamic> data = {
      "id": 12,
      "name": "May the FORCE be with you!",
    };
    data.putIfAbsent('userId', () => 189);
    response = await dio.post(
      _API_PREFIX,
      data: data,
    );
    print(response.data.toString());
  }

  Future<void> getReqWithQuery() async {
    Response response;
    Dio dio = Dio();
    response = await dio.get(
      _API_PREFIX,
      queryParameters: {
        "userId": 1,
        "id": 2,
      },
    );
    print(response.data.toString());
  }
}

Server server = Server();
