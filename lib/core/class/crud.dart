import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:babyzone/core/class/statusrequest.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

import '../functions/checkinterner.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data,
      {headers}) async {
    try {
      if (await checkInternet()) {
        var response =
            await http.post(Uri.parse(linkUrl), body: data, headers: headers);
        print(response.statusCode);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print(responsebody);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverFailure);
    }
  }
  Future<Either<StatusRequest, Map>> getData(String linkUrl, Map data,
      {headers}) async {
    try {
      if (await checkInternet()) {
        var response =
            await http.get(Uri.parse(linkUrl), headers: headers);

        print(response.statusCode);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print(responsebody);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverFailure);
    }
  }



  postRequestWithFiles(String url, Map data, File file, String filename) async {
    Map<String, String> headers = {"apikey": "K83400380388957"};

    var request = http.MultipartRequest("POST", Uri.parse(url));
    var length = await file.length();
    var stream = http.ByteStream(file.openRead());
    var multipartFile = http.MultipartFile(filename, stream, length,
        filename: basename(file.path));
    request.files.add(multipartFile);
    request.headers.addAll(headers);
    data.forEach((key, value) {
      request.fields[key] = value;
    });
    var myRequest = await request.send();

    var response = await http.Response.fromStream(myRequest);
    if (myRequest.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      log("Error${myRequest.statusCode}");
    }
  }

  postRequestWithImage(String url, Map data, File file, String filename) async {
    var request = http.MultipartRequest("POST", Uri.parse(url));
    var length = await file.length();
    var stream = http.ByteStream(file.openRead());
    var multipartFile = http.MultipartFile(filename, stream, length, filename: basename(file.path));
    request.files.add(multipartFile);
    data.forEach((key, value) {
      request.fields[key] = value;
    });
    var myRequest = await request.send();

    var response = await http.Response.fromStream(myRequest);
    if (myRequest.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      log("Error${myRequest.statusCode}");
    }
  }
}
