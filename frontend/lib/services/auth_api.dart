import 'dart:convert';
import 'package:http/http.dart' as http;

import '../dto/register_response.dart';

class ApiException implements Exception {
  final int? statusCode;
  final String code;
  final String message;
  final Map<String, List<String>>? validationErrors;

  ApiException({
    this.statusCode,
    required this.code,
    required this.message,
    this.validationErrors,
  });
}

class AuthApi {
  final String baseUrl;

  AuthApi({required this.baseUrl});

  Future<RegisterResponse> register(
    String email,
    String password,
  ) async {
    http.Response response;

    try {
      response = await http
          .post(
            Uri.parse('$baseUrl/api/auth/register'),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({
              'email': email,
              'password': password,
            }),
          )
          .timeout(const Duration(seconds: 15));
    } catch (_) {
      throw ApiException(
        code: 'NETWORK_ERROR',
        message: 'Nie można połączyć się z serwerem.',
      );
    }

    Map<String, dynamic> body;
    try {
      body = jsonDecode(response.body) as Map<String, dynamic>;
    } catch (_) {
      throw ApiException(
        statusCode: response.statusCode,
        code: 'INVALID_RESPONSE',
        message: 'Nieprawidłowa odpowiedź serwera.',
      );
    }

    if (response.statusCode == 201) {
      return RegisterResponse.fromJson(body);
    }

    if (response.statusCode == 400) {
      final rawErrors = body['errors'];

      final errors = rawErrors is Map
          ? rawErrors.map<String, List<String>>(
              (key, value) => MapEntry(
                key.toString(),
                (value as List)
                    .map((item) => item.toString())
                    .toList(),
              ),
            )
          : <String, List<String>>{};

      throw ApiException(
        statusCode: 400,
        code: 'VALIDATION_ERROR',
        message: 'Popraw dane formularza.',
        validationErrors: errors,
      );
    }

    throw ApiException(
      statusCode: response.statusCode,
      code: body['code']?.toString() ?? 'SERVER_ERROR',
      message: body['message']?.toString() ??
          'Wystąpił błąd serwera.',
    );
  }
}