class GithubUser {
  const GithubUser({required this.login, required this.avaratUrl});

  final String login;
  final String avaratUrl;

  static GithubUser fromJson(dynamic json) {
    return GithubUser(
      login: json['login'] as String,
      avaratUrl: json['avatar_url'] as String,
    );
  }
}
