import 'package:flutter/material.dart';

import 'presenters/authentication_presenter.dart';
import 'services/auth_api.dart';
import 'views/authentication_view.dart';

void main() {
  const apiUrl = String.fromEnvironment(
    'API_URL',
    defaultValue: 'http://localhost:8080',
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthenticationView(
        presenter: AuthenticationPresenter(
          AuthApi(baseUrl: apiUrl),
        ),
      ),
    ),
  );
}