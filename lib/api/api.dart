import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'api_constants.dart';
import 'app_config.dart';

class Api {
  Dio dio;
  KiwiContainer container = KiwiContainer();


  Api(this.dio) {
    dio = Dio(baseOptions);
  }

  final BaseOptions baseOptions = BaseOptions(
      baseUrl: appBaseUrl,
      connectTimeout: const Duration(seconds: 120),
      receiveTimeout: const Duration(seconds: 120),
      headers: {
        "Authorization": "Bearer $appSecret"
      }
      );

  void setUpInterceptors() {
    dio
      .interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options,
          RequestInterceptorHandler requestInterceptorHandler) {

        '======================================================================>';
        debugPrint("REQUEST URI ==============>  ${options.uri}");
        debugPrint("REQUEST DATA ==============>  ${options.data}");
        "======================================================================>";
        return requestInterceptorHandler.next(options); //continue
      }, onResponse:
          (Response<dynamic> response, ResponseInterceptorHandler handler) {
        "======================================================================>";
        debugPrint("RESPONSE DATA ==============>  ${response.data}");
        debugPrint(
            "RESPONSE STATUSCODE ==============>  ${response.statusCode}");
        debugPrint(
            "RESPONSE STATUSMESSAGE ==============>  ${response.statusMessage}");
        "======================================================================>";
        return handler.next(response); // continue
      }, onError: (DioError e, handler) {
        debugPrint("RESPONSE ERROR ==============>  ${e.type}");
        debugPrint("RESPONSE ERROR ==============>  ${e.message}");
        return handler.next(e); //continue
      }));
  }


  Response? handleError(DioError e) {
    debugPrint("${e.error} E.errorrrrr");
    debugPrint("${e.response?.data} E.response message");
    debugPrint("${e.message} E.status code");

    Response? response;
    switch (e.type) {
      case DioErrorType.cancel:
        response = Response(
            data: apiResponse("Request cancelled"),
            statusCode: 000,
            requestOptions: RequestOptions(path: ''));
        break;
      case DioErrorType.connectionTimeout:
        response = Response(
            data: apiResponse("Network connection timed out"),
            statusCode: 000,
            requestOptions: RequestOptions(path: ''));
        break;
      case DioErrorType.receiveTimeout:
        response = Response(
            data: apiResponse("Network connection timed out"),
            statusCode: 000,
            requestOptions: RequestOptions(path: ''));
        break;
      case DioErrorType.sendTimeout:
        response = Response(
            data: apiResponse("Network connection timed out"),
            statusCode: 000,
            requestOptions: RequestOptions(path: ''));
        break;
      case DioErrorType.unknown:
        if (e.error is SocketException) {
          response = Response(
              data: apiResponse("Please check your network connection"),
              statusCode: 000,
              requestOptions: RequestOptions(path: ''));
        } else if (e.error is HttpException) {
          response = Response(
              data: apiResponse("Network connection issue"),
              statusCode: 000,
              requestOptions: RequestOptions(path: ''));
        }
        break;
      default:
        if (e.response?.data.runtimeType == String ||
            e.error.toString().contains("404")) {
          response = Response(
              data: apiResponse("An error occurred, please try again"),
              statusCode: 000,
              requestOptions: RequestOptions(path: ''));
        } else if (e.response?.data.runtimeType == String ||
            e.error.toString().contains("400")) {
          response = Response(
              data: apiResponse(
                  e.response?.data?["message"] ?? e.response?.data?["Message"],
                  e.response?.data?["responseCode"]),
              statusCode: e.response?.statusCode ?? 000,
              requestOptions: RequestOptions(path: ''));
        } else if (e.response?.data.runtimeType == String &&
            e.error.toString().contains("500") &&
            e.requestOptions.baseUrl.contains(
                "pass in any url to catch errors coming from it")) {

          response = Response(
              data: apiResponse(e.response?.data?["Message"],
                  e.response?.data?["responseCode"]),
              statusCode: e.response?.statusCode ?? 000,
              requestOptions: RequestOptions(path: ''));
        } else {
          print("came in here");
          response = Response(
              data: apiResponse(e.response?.data?["message"],
                  e.response?.data?["responseCode"]),
              statusCode: e.response?.statusCode ?? 000,
              requestOptions: RequestOptions(path: ''));
        }
    }
    return response;
  }
}
