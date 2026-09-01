import 'package:http/http.dart' as http;
class ApiClient {
  final String base;
  ApiClient(this.base);
  Future<Map<String,dynamic>> login(String e, String p) async => {'token':'mock'};
  Future<List> myVaults() async => [];
}
