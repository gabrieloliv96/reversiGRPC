//
//  Generated code. Do not modify.
//  source: reversi.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use initializeRequestDescriptor instead')
const InitializeRequest$json = {
  '1': 'InitializeRequest',
  '2': [
    {'1': 'player_name', '3': 1, '4': 1, '5': 9, '10': 'playerName'},
  ],
};

/// Descriptor for `InitializeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initializeRequestDescriptor = $convert.base64Decode(
    'ChFJbml0aWFsaXplUmVxdWVzdBIfCgtwbGF5ZXJfbmFtZRgBIAEoCVIKcGxheWVyTmFtZQ==');

@$core.Deprecated('Use initializeResponseDescriptor instead')
const InitializeResponse$json = {
  '1': 'InitializeResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'player_id', '3': 2, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

/// Descriptor for `InitializeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initializeResponseDescriptor = $convert.base64Decode(
    'ChJJbml0aWFsaXplUmVzcG9uc2USGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZRIbCglwbGF5ZX'
    'JfaWQYAiABKAlSCHBsYXllcklk');

@$core.Deprecated('Use messageRequestDescriptor instead')
const MessageRequest$json = {
  '1': 'MessageRequest',
  '2': [
    {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `MessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageRequestDescriptor = $convert.base64Decode(
    'Cg5NZXNzYWdlUmVxdWVzdBIWCgZzZW5kZXIYASABKAlSBnNlbmRlchIYCgdjb250ZW50GAIgAS'
    'gJUgdjb250ZW50');

@$core.Deprecated('Use messageResponseDescriptor instead')
const MessageResponse$json = {
  '1': 'MessageResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'reply', '3': 2, '4': 1, '5': 9, '10': 'reply'},
  ],
};

/// Descriptor for `MessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageResponseDescriptor = $convert.base64Decode(
    'Cg9NZXNzYWdlUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXMSFAoFcmVwbHkYAiABKA'
    'lSBXJlcGx5');

@$core.Deprecated('Use boardMoveRequestDescriptor instead')
const BoardMoveRequest$json = {
  '1': 'BoardMoveRequest',
  '2': [
    {'1': 'boardH', '3': 1, '4': 1, '5': 5, '10': 'boardH'},
    {'1': 'boardV', '3': 2, '4': 1, '5': 5, '10': 'boardV'},
  ],
};

/// Descriptor for `BoardMoveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boardMoveRequestDescriptor = $convert.base64Decode(
    'ChBCb2FyZE1vdmVSZXF1ZXN0EhYKBmJvYXJkSBgBIAEoBVIGYm9hcmRIEhYKBmJvYXJkVhgCIA'
    'EoBVIGYm9hcmRW');

@$core.Deprecated('Use boardMoveResponseDescriptor instead')
const BoardMoveResponse$json = {
  '1': 'BoardMoveResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'currentPlayer', '3': 2, '4': 1, '5': 9, '10': 'currentPlayer'},
  ],
};

/// Descriptor for `BoardMoveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boardMoveResponseDescriptor = $convert.base64Decode(
    'ChFCb2FyZE1vdmVSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIkCg1jdXJyZW50UG'
    'xheWVyGAIgASgJUg1jdXJyZW50UGxheWVy');

@$core.Deprecated('Use giveUpRequestDescriptor instead')
const GiveUpRequest$json = {
  '1': 'GiveUpRequest',
  '2': [
    {'1': 'playerColor', '3': 1, '4': 1, '5': 9, '10': 'playerColor'},
  ],
};

/// Descriptor for `GiveUpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List giveUpRequestDescriptor = $convert.base64Decode(
    'Cg1HaXZlVXBSZXF1ZXN0EiAKC3BsYXllckNvbG9yGAEgASgJUgtwbGF5ZXJDb2xvcg==');

@$core.Deprecated('Use giveUpResponseDescriptor instead')
const GiveUpResponse$json = {
  '1': 'GiveUpResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'winner', '3': 2, '4': 1, '5': 9, '10': 'winner'},
  ],
};

/// Descriptor for `GiveUpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List giveUpResponseDescriptor = $convert.base64Decode(
    'Cg5HaXZlVXBSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIWCgZ3aW5uZXIYAiABKA'
    'lSBndpbm5lcg==');

@$core.Deprecated('Use turnEndRequestDescriptor instead')
const TurnEndRequest$json = {
  '1': 'TurnEndRequest',
  '2': [
    {'1': 'playerTurn', '3': 1, '4': 1, '5': 5, '10': 'playerTurn'},
  ],
};

/// Descriptor for `TurnEndRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List turnEndRequestDescriptor = $convert.base64Decode(
    'Cg5UdXJuRW5kUmVxdWVzdBIeCgpwbGF5ZXJUdXJuGAEgASgFUgpwbGF5ZXJUdXJu');

@$core.Deprecated('Use turnEndResponseDescriptor instead')
const TurnEndResponse$json = {
  '1': 'TurnEndResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `TurnEndResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List turnEndResponseDescriptor = $convert.base64Decode(
    'Cg9UdXJuRW5kUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXM=');

@$core.Deprecated('Use firstPlayerRequestDescriptor instead')
const FirstPlayerRequest$json = {
  '1': 'FirstPlayerRequest',
  '2': [
    {'1': 'playerTurn', '3': 1, '4': 1, '5': 5, '10': 'playerTurn'},
  ],
};

/// Descriptor for `FirstPlayerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List firstPlayerRequestDescriptor = $convert.base64Decode(
    'ChJGaXJzdFBsYXllclJlcXVlc3QSHgoKcGxheWVyVHVybhgBIAEoBVIKcGxheWVyVHVybg==');

@$core.Deprecated('Use firstPlayerResponseDescriptor instead')
const FirstPlayerResponse$json = {
  '1': 'FirstPlayerResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `FirstPlayerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List firstPlayerResponseDescriptor = $convert.base64Decode(
    'ChNGaXJzdFBsYXllclJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVz');

