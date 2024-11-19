import 'dart:async';

import 'package:bloc/bloc.dart';

/// {@template bloc}
/// Takes two `Streams` of `Events` and `SideEffects` as input
/// and transforms them into `Streams` of `States` and `SideEffects` as output.
/// {@endtemplate}
abstract class Daejeon<Event, State, SideEffect> extends Bloc<Event, State> {
  /// {@macro bloc}
  Daejeon(State initialState)
      : sideEffect = StreamController(),
        super(initialState);

  /// Initializes Daejeon with initial state and side effect.
  Daejeon.from(State initialState, SideEffect initialSideEffect)
      : sideEffect = StreamController<SideEffect>()..add(initialSideEffect),
        super(initialState);

  /// Initializes Daejeon with initial state and side effect stream.
  Daejeon.fromStream({
    required State initialState,
    required this.sideEffect,
  }) : super(initialState);

  /// Source of side effect flow
  final StreamController<SideEffect> sideEffect;
}
