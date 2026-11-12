class RegisterResponse {
  final int userId;

  RegisterResponse({required this.userId});

  factory RegisterResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return RegisterResponse(
      userId: json['userId'] as int,
    );
  }
}