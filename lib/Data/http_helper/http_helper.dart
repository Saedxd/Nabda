import 'dart:convert';
import 'dart:developer';


import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:built_collection/built_collection.dart';
import 'package:testnew/models/UserDataModel/UserDataModel.dart';
import 'package:testnew/models/serializer/serializer.dart';
import 'Ihttp_helper.dart';
import 'dart:io';
import 'dart:core';

class HttpHelper implements IHttpHelper {
  Dio? _dio;
  Dio? _dio2;
  var cookieJar = CookieJar();

  HttpHelper(this._dio, this._dio2) {
    _dio!.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
    ));
    _dio!.interceptors.add(CookieManager(cookieJar));

    _dio2!.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
    ));
  }

  @override
  Future<UserDataModel> Login(
      String Email,
      String name,
      String fcmToken,
      ) async {
    try {
      final formData = {
        "email": Email,
        "name": name,
        "fcm_token": fcmToken,
      };


      final response = await _dio!
          .post('login', data: formData, options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserDataModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserDataModel),
                  ],
                ),
              ],
            )) as UserDataModel;

        return baseResponse;
      } else {
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }


  // @override
  // Future<GetGenderModel> GetGenders() async {
  //   try {
  //     final response =
  //     await _dio!.get('genders', options: Options(headers: {
  //       "Accept" :"application/json"
  //     }));
  //
  //     if (response.statusCode == 200){
  //       final baseResponse = serializers.deserialize(json.decode(response.data),
  //           specifiedType: const FullType(
  //             GetGenderModel,
  //             [
  //               FullType(
  //                 BuiltList,
  //                 [
  //                   FullType(GetGenderModel),
  //                 ],
  //               ),
  //             ],
  //           )) as GetGenderModel;
  //
  //
  //       return baseResponse;
  //
  //     } else {
  //       throw NetworkException();
  //     }
  //   } catch (e) {
  //     throw NetworkException();
  //   }
  // }

}

class NetworkException implements Exception {}
