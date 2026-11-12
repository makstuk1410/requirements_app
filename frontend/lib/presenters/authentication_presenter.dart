import 'package:flutter/foundation.dart';

import '../services/auth_api.dart';

class AuthenticationPresenter extends ChangeNotifier {
  final AuthApi _authApi;

  AuthenticationPresenter(this._authApi);

  bool isLoading = false;
  bool registrationSuccess = false;
  String? errorMessage;
  Map<String, List<String>> validationErrors = {};

  Future<void> register(
    String email,
    String password,
  ) async {
    isLoading = true;
    registrationSuccess = false;
    errorMessage = null;
    validationErrors = {};
    notifyListeners();

    try {
      await _authApi.register(email, password);
      registrationSuccess = true;
    } on ApiException catch (error) {
      if (error.statusCode == 400) {
        validationErrors = error.validationErrors ?? {};
        errorMessage = error.message;
      } else if (error.statusCode == 409) {
        errorMessage = 'Podany adres email jest już zajęty.';
      } else {
        errorMessage = error.message;
      }
    } catch (_) {
      errorMessage = 'Wystąpił nieoczekiwany błąd.';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  void clearRegistrationSuccess() {
    registrationSuccess = false;
    notifyListeners();
  }
}