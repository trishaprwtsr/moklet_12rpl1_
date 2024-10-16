import 'dart:convert';
import 'dart:io';
import "package:http/http.dart" as http;
import 'package:siakad/app/data/models/model_tahunajaran.dart';
import '../../data/services/constant.dart';

class RepositoryTahunAjaran {
  RepositoryTahunAjaran();

  Future<ModelTahunAjaran> loadTahunAjaran() async {
    addCookies();
    String url = CORS_ANYWHERE + DOMAIN;
    var res = http.Request(
      'GET',
      Uri.parse('$url/send_request?model=moklet.tahun.ajaran'),
    );
    res.headers.addAll(defaultHeader);
    http.StreamedResponse response = await res.send();
    try {
      if (response.statusCode == 200) {
        var jsonString = await response.stream.bytesToString();
        // print(ModelTahunAjaran.fromJson(jsonDecode(jsonString)));
        return ModelTahunAjaran.fromJson(jsonDecode(jsonString));
      } else {
        return ModelTahunAjaran(
            isError: true, data: [], message: 'Gagal Bad Request');
      }
    } catch (e) {
      print(e);
      return ModelTahunAjaran(isError: true, data: [], message: 'Gagal Catch');
    }
  }
}
