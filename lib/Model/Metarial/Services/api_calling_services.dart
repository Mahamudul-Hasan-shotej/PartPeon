import 'dart:io';

import 'package:parts_peon/DataModel/allCatagoryModel.dart';
import 'package:http/http.dart' as http;
import 'package:parts_peon/Model/Metarial/Services/api_exceptions.dart';

String apipath = 'http://localhost:7071/api/';

class AllApiCallingServices {
  static final AllApiCallingServices _singleton = AllApiCallingServices();
  static AllApiCallingServices get instance => _singleton;
  AllCatagoryModel allCatagoryModel = AllCatagoryModel();

  Future<dynamic> allCatagory() async {
    var responseJson;
    try {
      var url1 = Uri.parse("$apipath/get-dynamic-category");
      final response = await http.get(url1);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }
}

dynamic _returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      // var responseJson = json.decode(response.body.toString());
      return response;
    case 400:
      throw BadRequestException(response.body.toString());
    case 401:
    case 403:
      throw UnauthorisedException(response.body.toString());
    case 500:
    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
  }
}
