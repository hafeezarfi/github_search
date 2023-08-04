import 'package:common_github_search/common_github_search.dart';
import 'package:angulardart_github_search/src/github_search.dart';

import 'package:ngdart/angular.dart';

@Component(
    selector: 'search-results',
    templateUrl: 'search_results_components.html',
    directives: [
      coreDirectives,
      SearchResultItemComponent,
    ])
class SearchResultsComponent {
  @Input()
  late List<SearchResultItem> items;
}
