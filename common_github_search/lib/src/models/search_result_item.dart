import 'package:common_github_search/common_github_search.dart';

class SearchResultItem {
  const SearchResultItem({
    required this.fullname,
    required this.htmlUrl,
    required this.owner,
  });

  final String fullname;
  final String htmlUrl;
  final GithubUser owner;

  static SearchResultItem fromJson(dynamic json) {
    return SearchResultItem(
      fullname: json['full_name'] as String,
      htmlUrl: json['html_url'] as String,
      owner: GithubUser.fromJson(json['owner']),
    );
  }
}
