import 'package:angulardart_github_search/src/github_search.dart';
import 'package:common_github_search/common_github_search.dart';
import 'package:ngdart/angular.dart';

// AngularDart info: https://angulardart.xyz
// Components info: https://angulardart.xyz/components
//
// (If the links still point to the old Dart-lang repo, go here:
// https://pub.dev/ngcomponents)

@Component(
    selector: 'my-app',
    template:
        '<search-form [githubRepository]="githubRepository"></search-form>',
    directives: [SearchFormComponent])
class AppComponent {
  final githubRepository = GithubRepository(
    GithubCache(),
    GithubClient(),
  );
  // Nothing here yet. All logic is in TodoListComponent.
}
