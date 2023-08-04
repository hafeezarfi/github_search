import 'package:ngdart/angular.dart';
import 'package:angular_bloc/angular_bloc.dart';
import 'package:common_github_search/common_github_search.dart';
import 'package:angulardart_github_search/src/github_search.dart';

@Component(
  selector: 'search_form',
  templateUrl: 'search_form_component.html',
  directives: [
    SearchBarComponent,
    SearchBodyComponent,
  ],
  pipes: [
    BlocPipe
  ]
)
class SearchFormComponent implements OnInit, OnDestroy{
  @Input()
  late GithubRepository githubRepository; // not sure about late

  late GithubSearchBloc githubSearchBloc; // not sure about late

  @override
  void ngOnDestroy() {
    githubSearchBloc.close();
  }

  @override
  void ngOnInit() {
    githubSearchBloc=GithubSearchBloc(githubRepository: githubRepository);
  }

}