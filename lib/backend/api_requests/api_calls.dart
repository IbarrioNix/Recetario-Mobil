import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetRecetasCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetRecetas',
      apiUrl: 'https://www.themealdb.com/api/json/v1/1/search.php?s=',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? meals(dynamic response) => getJsonField(
        response,
        r'''$.meals''',
        true,
      ) as List?;
  static List<String>? nombre(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strMeal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? imagen(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strMealThumb''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? categoria(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strCategory''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? origen(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strArea''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].idMeal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? videop(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strYoutube''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? instrucciones(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strInstructions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ig1(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strIngredient1''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ig2(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strIngredient2''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ig3(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strIngredient3''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ig4(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strIngredient4''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ig5(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strIngredient5''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? medida(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strMeasure1''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? medida2(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strMeasure2''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? medida3(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strMeasure3''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? medida4(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strMeasure4''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? medida5(dynamic response) => (getJsonField(
        response,
        r'''$.meals[:].strMeasure5''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetFavoritosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetFavoritos',
      apiUrl: 'https://ygvivtmtrtiuhkgkmwom.supabase.co/rest/v1/favoritos',
      callType: ApiCallType.GET,
      headers: {
        'apikey': 'sb_publishable_lpaHujOky2ELOSSnByRe9w_ogOe_zcJ',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlndml2dG10cnRpdWhrZ2ttd29tIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzk2NTM3NDksImV4cCI6MjA5NTIyOTc0OX0.ayTzru4R9WCcbGMX3fq1qohA6ylY3mAOfSkCvsq5dRE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? idFav(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? idUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  static String? idMeal(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].meal_id''',
      ));
  static String? nom(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nombre''',
      ));
  static String? img(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].imagen''',
      ));
  static String? cate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].categoria''',
      ));
  static String? org(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].origen''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
