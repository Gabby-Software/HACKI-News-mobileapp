part of 'search_cubit.dart';

enum SearchStatus {
  initial,
  loading,
  loadingMore,
  loaded,
}

class SearchState extends Equatable {
  const SearchState({
    required this.status,
    required this.results,
    required this.params,
  });

  SearchState.init()
      : status = SearchStatus.initial,
        results = <Story>[],
        params = SearchParams.init();

  final List<Story> results;
  final SearchStatus status;
  final SearchParams params;

  SearchState copyWith({
    List<Story>? results,
    SearchStatus? status,
    SearchParams? params,
  }) {
    return SearchState(
      results: results ?? this.results,
      status: status ?? this.status,
      params: params ?? this.params,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        status,
        results,
        params,
      ];
}
