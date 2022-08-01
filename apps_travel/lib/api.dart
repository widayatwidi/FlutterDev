import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CallApi{
  final String _url = "http://travel.test/api/";

  postData(data, apiUrl) async {
    print("fungsi Call Api");
    print(data);

    var fullUrl = _url+apiUrl;
    return await http.post(
      Uri.parse(fullUrl),
      body: jsonEncode(data),
      headers: _setHeader(),
    );
  }

  _setHeader() => {
    'Content-type':'application/json',
    'Accept':'application/json'
  };
}