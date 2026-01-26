class AuthRepository {
  Future<bool> authMe() async {
    await Future.delayed(Duration(seconds: 2));
    return false;
  }
}