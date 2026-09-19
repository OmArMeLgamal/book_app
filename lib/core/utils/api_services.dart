import 'package:dio/dio.dart';
import 'package:bookly_app/core/errors/Failure.dart';
import 'package:flutter/material.dart';

class ApiServices {
  final _baseurl = 'https://www.googleapis.com/books/v1/volumes';
  final Dio dio;

  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
  var response   =  await dio.get('$_baseurl$endpoint');

  return response.data;
  }
}
