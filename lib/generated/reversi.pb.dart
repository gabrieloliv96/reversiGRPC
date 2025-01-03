//
//  Generated code. Do not modify.
//  source: reversi.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Mensagem de envio de uma mensagem no chat
class MessageRequest extends $pb.GeneratedMessage {
  factory MessageRequest({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  MessageRequest._() : super();
  factory MessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MessageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reversi'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageRequest clone() => MessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageRequest copyWith(void Function(MessageRequest) updates) => super.copyWith((message) => updates(message as MessageRequest)) as MessageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageRequest create() => MessageRequest._();
  MessageRequest createEmptyInstance() => create();
  static $pb.PbList<MessageRequest> createRepeated() => $pb.PbList<MessageRequest>();
  @$core.pragma('dart2js:noInline')
  static MessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageRequest>(create);
  static MessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class MessageResponse extends $pb.GeneratedMessage {
  factory MessageResponse({
    $core.String? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  MessageResponse._() : super();
  factory MessageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MessageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reversi'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageResponse clone() => MessageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageResponse copyWith(void Function(MessageResponse) updates) => super.copyWith((message) => updates(message as MessageResponse)) as MessageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageResponse create() => MessageResponse._();
  MessageResponse createEmptyInstance() => create();
  static $pb.PbList<MessageResponse> createRepeated() => $pb.PbList<MessageResponse>();
  @$core.pragma('dart2js:noInline')
  static MessageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageResponse>(create);
  static MessageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

/// Mensagem para o movimento do jogador no tabuleiro
class BoardMoveRequest extends $pb.GeneratedMessage {
  factory BoardMoveRequest({
    $core.int? boardH,
    $core.int? boardV,
  }) {
    final $result = create();
    if (boardH != null) {
      $result.boardH = boardH;
    }
    if (boardV != null) {
      $result.boardV = boardV;
    }
    return $result;
  }
  BoardMoveRequest._() : super();
  factory BoardMoveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoardMoveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoardMoveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reversi'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'boardH', $pb.PbFieldType.O3, protoName: 'boardH')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'boardV', $pb.PbFieldType.O3, protoName: 'boardV')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoardMoveRequest clone() => BoardMoveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoardMoveRequest copyWith(void Function(BoardMoveRequest) updates) => super.copyWith((message) => updates(message as BoardMoveRequest)) as BoardMoveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoardMoveRequest create() => BoardMoveRequest._();
  BoardMoveRequest createEmptyInstance() => create();
  static $pb.PbList<BoardMoveRequest> createRepeated() => $pb.PbList<BoardMoveRequest>();
  @$core.pragma('dart2js:noInline')
  static BoardMoveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoardMoveRequest>(create);
  static BoardMoveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get boardH => $_getIZ(0);
  @$pb.TagNumber(1)
  set boardH($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoardH() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoardH() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get boardV => $_getIZ(1);
  @$pb.TagNumber(2)
  set boardV($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBoardV() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoardV() => clearField(2);
}

class BoardMoveResponse extends $pb.GeneratedMessage {
  factory BoardMoveResponse({
    $core.String? status,
    $core.String? currentPlayer,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (currentPlayer != null) {
      $result.currentPlayer = currentPlayer;
    }
    return $result;
  }
  BoardMoveResponse._() : super();
  factory BoardMoveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoardMoveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoardMoveResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reversi'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..aOS(2, _omitFieldNames ? '' : 'currentPlayer', protoName: 'currentPlayer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoardMoveResponse clone() => BoardMoveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoardMoveResponse copyWith(void Function(BoardMoveResponse) updates) => super.copyWith((message) => updates(message as BoardMoveResponse)) as BoardMoveResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoardMoveResponse create() => BoardMoveResponse._();
  BoardMoveResponse createEmptyInstance() => create();
  static $pb.PbList<BoardMoveResponse> createRepeated() => $pb.PbList<BoardMoveResponse>();
  @$core.pragma('dart2js:noInline')
  static BoardMoveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoardMoveResponse>(create);
  static BoardMoveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get currentPlayer => $_getSZ(1);
  @$pb.TagNumber(2)
  set currentPlayer($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentPlayer() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentPlayer() => clearField(2);
}

/// Mensagem para o jogador desistir
class GiveUpRequest extends $pb.GeneratedMessage {
  factory GiveUpRequest({
    $core.String? playerColor,
  }) {
    final $result = create();
    if (playerColor != null) {
      $result.playerColor = playerColor;
    }
    return $result;
  }
  GiveUpRequest._() : super();
  factory GiveUpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GiveUpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GiveUpRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reversi'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'playerColor', protoName: 'playerColor')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GiveUpRequest clone() => GiveUpRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GiveUpRequest copyWith(void Function(GiveUpRequest) updates) => super.copyWith((message) => updates(message as GiveUpRequest)) as GiveUpRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GiveUpRequest create() => GiveUpRequest._();
  GiveUpRequest createEmptyInstance() => create();
  static $pb.PbList<GiveUpRequest> createRepeated() => $pb.PbList<GiveUpRequest>();
  @$core.pragma('dart2js:noInline')
  static GiveUpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GiveUpRequest>(create);
  static GiveUpRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playerColor => $_getSZ(0);
  @$pb.TagNumber(1)
  set playerColor($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerColor() => clearField(1);
}

class GiveUpResponse extends $pb.GeneratedMessage {
  factory GiveUpResponse({
    $core.String? status,
    $core.String? winner,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (winner != null) {
      $result.winner = winner;
    }
    return $result;
  }
  GiveUpResponse._() : super();
  factory GiveUpResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GiveUpResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GiveUpResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reversi'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..aOS(2, _omitFieldNames ? '' : 'winner')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GiveUpResponse clone() => GiveUpResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GiveUpResponse copyWith(void Function(GiveUpResponse) updates) => super.copyWith((message) => updates(message as GiveUpResponse)) as GiveUpResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GiveUpResponse create() => GiveUpResponse._();
  GiveUpResponse createEmptyInstance() => create();
  static $pb.PbList<GiveUpResponse> createRepeated() => $pb.PbList<GiveUpResponse>();
  @$core.pragma('dart2js:noInline')
  static GiveUpResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GiveUpResponse>(create);
  static GiveUpResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get winner => $_getSZ(1);
  @$pb.TagNumber(2)
  set winner($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWinner() => $_has(1);
  @$pb.TagNumber(2)
  void clearWinner() => clearField(2);
}

/// Mensagem para indicar que o turno do jogador terminou
class TurnEndRequest extends $pb.GeneratedMessage {
  factory TurnEndRequest({
    $core.int? playerTurn,
  }) {
    final $result = create();
    if (playerTurn != null) {
      $result.playerTurn = playerTurn;
    }
    return $result;
  }
  TurnEndRequest._() : super();
  factory TurnEndRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TurnEndRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TurnEndRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reversi'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'playerTurn', $pb.PbFieldType.O3, protoName: 'playerTurn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TurnEndRequest clone() => TurnEndRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TurnEndRequest copyWith(void Function(TurnEndRequest) updates) => super.copyWith((message) => updates(message as TurnEndRequest)) as TurnEndRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TurnEndRequest create() => TurnEndRequest._();
  TurnEndRequest createEmptyInstance() => create();
  static $pb.PbList<TurnEndRequest> createRepeated() => $pb.PbList<TurnEndRequest>();
  @$core.pragma('dart2js:noInline')
  static TurnEndRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TurnEndRequest>(create);
  static TurnEndRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get playerTurn => $_getIZ(0);
  @$pb.TagNumber(1)
  set playerTurn($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerTurn() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerTurn() => clearField(1);
}

class TurnEndResponse extends $pb.GeneratedMessage {
  factory TurnEndResponse({
    $core.String? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  TurnEndResponse._() : super();
  factory TurnEndResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TurnEndResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TurnEndResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reversi'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TurnEndResponse clone() => TurnEndResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TurnEndResponse copyWith(void Function(TurnEndResponse) updates) => super.copyWith((message) => updates(message as TurnEndResponse)) as TurnEndResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TurnEndResponse create() => TurnEndResponse._();
  TurnEndResponse createEmptyInstance() => create();
  static $pb.PbList<TurnEndResponse> createRepeated() => $pb.PbList<TurnEndResponse>();
  @$core.pragma('dart2js:noInline')
  static TurnEndResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TurnEndResponse>(create);
  static TurnEndResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

/// Mensagem para definir o primeiro jogador
class FirstPlayerRequest extends $pb.GeneratedMessage {
  factory FirstPlayerRequest({
    $core.int? playerTurn,
  }) {
    final $result = create();
    if (playerTurn != null) {
      $result.playerTurn = playerTurn;
    }
    return $result;
  }
  FirstPlayerRequest._() : super();
  factory FirstPlayerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FirstPlayerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FirstPlayerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reversi'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'playerTurn', $pb.PbFieldType.O3, protoName: 'playerTurn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FirstPlayerRequest clone() => FirstPlayerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FirstPlayerRequest copyWith(void Function(FirstPlayerRequest) updates) => super.copyWith((message) => updates(message as FirstPlayerRequest)) as FirstPlayerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FirstPlayerRequest create() => FirstPlayerRequest._();
  FirstPlayerRequest createEmptyInstance() => create();
  static $pb.PbList<FirstPlayerRequest> createRepeated() => $pb.PbList<FirstPlayerRequest>();
  @$core.pragma('dart2js:noInline')
  static FirstPlayerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FirstPlayerRequest>(create);
  static FirstPlayerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get playerTurn => $_getIZ(0);
  @$pb.TagNumber(1)
  set playerTurn($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerTurn() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerTurn() => clearField(1);
}

class FirstPlayerResponse extends $pb.GeneratedMessage {
  factory FirstPlayerResponse({
    $core.String? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  FirstPlayerResponse._() : super();
  factory FirstPlayerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FirstPlayerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FirstPlayerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reversi'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FirstPlayerResponse clone() => FirstPlayerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FirstPlayerResponse copyWith(void Function(FirstPlayerResponse) updates) => super.copyWith((message) => updates(message as FirstPlayerResponse)) as FirstPlayerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FirstPlayerResponse create() => FirstPlayerResponse._();
  FirstPlayerResponse createEmptyInstance() => create();
  static $pb.PbList<FirstPlayerResponse> createRepeated() => $pb.PbList<FirstPlayerResponse>();
  @$core.pragma('dart2js:noInline')
  static FirstPlayerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FirstPlayerResponse>(create);
  static FirstPlayerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
