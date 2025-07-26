import 'package:feature_flow/feature_flow.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_characters/src/domain/model/marvel_character.dart';
import 'package:marvel_characters/src/domain/repository/marvel_characters_repository.dart';
import 'package:marvel_characters/src/flow/marvel_characters_flow_state.dart';

part 'marvel_characters_bloc.freezed.dart';
part 'marvel_characters_event.dart';
part 'marvel_characters_state.dart';

@injectable
class MarvelCharactersBloc
    extends Bloc<MarvelCharactersEvent, MarvelCharactersState> {
  final MarvelCharactersRepository _charactersRepository;

  MarvelCharactersBloc(
    this._controller,
    this._charactersRepository,
  ) : super(const MarvelCharactersState.initial()) {
    on<MarvelCharactersEvent>((event, emit) => switch (event) {
          _LoadMarvelCharactersEvent() => _onLoad(emit, event),
          _OpenMarvelCharactersEvent() => _onOpen(emit, event),
        });

    add(const MarvelCharactersEvent.load());
  }

  Future<void> _onLoad(
    Emitter<MarvelCharactersState> emit,
    _LoadMarvelCharactersEvent event,
  ) async {
    emit(const MarvelCharactersState.loading());

    final characters = await _charactersRepository.getCharacters();

    emit(
      characters.fold(
        MarvelCharactersState.success,
        MarvelCharactersState.error,
      ),
    );
  }

  final FeatureFlowController<MarvelCharactersFlowState> _controller;

  void _onOpen(
    Emitter<MarvelCharactersState> emit,
    _OpenMarvelCharactersEvent event,
  ) {
    _controller
        .update((state) => state.copyWith(selectedCharacter: event.character));
  }
}
