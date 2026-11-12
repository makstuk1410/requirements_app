import 'package:flutter/material.dart';

import '../presenters/authentication_presenter.dart';

class AuthenticationView extends StatefulWidget {
  final AuthenticationPresenter presenter;

  const AuthenticationView({
    super.key,
    required this.presenter,
  });

  @override
  State<AuthenticationView> createState() =>
      _AuthenticationViewState();
}

class _AuthenticationViewState
    extends State<AuthenticationView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late final AuthenticationPresenter presenter;

  @override
  void initState() {
    super.initState();
    presenter = widget.presenter;
    presenter.addListener(_onPresenterChanged);
  }

  void _onPresenterChanged() {
    if (!mounted) return;

    setState(() {});

    if (presenter.registrationSuccess) {
      presenter.clearRegistrationSuccess();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Konto zostało utworzone!'),
        ),
      );

      showLoginForm();
    }
  }

  void showLoginForm() {
    // Tymczasowo: ekran logowania powstanie w UC2.
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Przejście do logowania — UC2'),
      ),
    );
  }

  void showRegistrationForm() {
    // Formularz rejestracji jest budowany przez build().
  }

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void showRegistrationSuccess() {
    // Sukces jest obsługiwany przez listener Presentera.
  }

  @override
  void dispose() {
    presenter.removeListener(_onPresenterChanged);
    presenter.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rejestracja')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Email jest wymagany';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Hasło',
                    ),
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return 'Hasło musi mieć minimum 8 znaków';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  if (presenter.errorMessage != null)
                    Text(
                      presenter.errorMessage!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  for (final messages
                      in presenter.validationErrors.values)
                    for (final message in messages)
                      Text(
                        message,
                        style: const TextStyle(color: Colors.red),
                      ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: presenter.isLoading
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              presenter.register(
                                _emailController.text,
                                _passwordController.text,
                              );
                            }
                          },
                    child: presenter.isLoading
                        ? const CircularProgressIndicator()
                        : const Text('Zarejestruj się'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}