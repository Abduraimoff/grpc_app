///
//  Generated code. Do not modify.
//  source: profile.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use customerCreateRequestDescriptor instead')
const CustomerCreateRequest$json = const {
  '1': 'CustomerCreateRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'birthdate', '3': 4, '4': 1, '5': 9, '10': 'birthdate'},
    const {'1': 'phone_number', '3': 5, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'address', '3': 6, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'gender', '3': 7, '4': 1, '5': 3, '10': 'gender'},
    const {'1': 'image_url', '3': 8, '4': 1, '5': 9, '10': 'imageUrl'},
  ],
};

/// Descriptor for `CustomerCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customerCreateRequestDescriptor = $convert.base64Decode('ChVDdXN0b21lckNyZWF0ZVJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEh0KCmZpcnN0X25hbWUYAiABKAlSCWZpcnN0TmFtZRIbCglsYXN0X25hbWUYAyABKAlSCGxhc3ROYW1lEhwKCWJpcnRoZGF0ZRgEIAEoCVIJYmlydGhkYXRlEiEKDHBob25lX251bWJlchgFIAEoCVILcGhvbmVOdW1iZXISGAoHYWRkcmVzcxgGIAEoCVIHYWRkcmVzcxIWCgZnZW5kZXIYByABKANSBmdlbmRlchIbCglpbWFnZV91cmwYCCABKAlSCGltYWdlVXJs');
@$core.Deprecated('Use customerReadRequestDescriptor instead')
const CustomerReadRequest$json = const {
  '1': 'CustomerReadRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CustomerReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customerReadRequestDescriptor = $convert.base64Decode('ChNDdXN0b21lclJlYWRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use customerReadDescriptor instead')
const CustomerRead$json = const {
  '1': 'CustomerRead',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'first_name', '3': 3, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 4, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'birthdate', '3': 5, '4': 1, '5': 9, '10': 'birthdate'},
    const {'1': 'phone_number', '3': 6, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'address', '3': 7, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'gender', '3': 8, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'image_url', '3': 9, '4': 1, '5': 9, '10': 'imageUrl'},
  ],
};

/// Descriptor for `CustomerRead`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customerReadDescriptor = $convert.base64Decode('CgxDdXN0b21lclJlYWQSDgoCaWQYASABKAlSAmlkEhoKCHVzZXJuYW1lGAIgASgJUgh1c2VybmFtZRIdCgpmaXJzdF9uYW1lGAMgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAQgASgJUghsYXN0TmFtZRIcCgliaXJ0aGRhdGUYBSABKAlSCWJpcnRoZGF0ZRIhCgxwaG9uZV9udW1iZXIYBiABKAlSC3Bob25lTnVtYmVyEhgKB2FkZHJlc3MYByABKAlSB2FkZHJlc3MSFgoGZ2VuZGVyGAggASgJUgZnZW5kZXISGwoJaW1hZ2VfdXJsGAkgASgJUghpbWFnZVVybA==');
@$core.Deprecated('Use customerReadResponseDescriptor instead')
const CustomerReadResponse$json = const {
  '1': 'CustomerReadResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'id', '3': 3, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 4, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'first_name', '3': 5, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 6, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'birthdate', '3': 7, '4': 1, '5': 9, '10': 'birthdate'},
    const {'1': 'phone_number', '3': 8, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'address', '3': 9, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'gender', '3': 10, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'image_url', '3': 11, '4': 1, '5': 9, '10': 'imageUrl'},
  ],
};

/// Descriptor for `CustomerReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customerReadResponseDescriptor = $convert.base64Decode('ChRDdXN0b21lclJlYWRSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdlEg4KAmlkGAMgASgJUgJpZBIaCgh1c2VybmFtZRgEIAEoCVIIdXNlcm5hbWUSHQoKZmlyc3RfbmFtZRgFIAEoCVIJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZRgGIAEoCVIIbGFzdE5hbWUSHAoJYmlydGhkYXRlGAcgASgJUgliaXJ0aGRhdGUSIQoMcGhvbmVfbnVtYmVyGAggASgJUgtwaG9uZU51bWJlchIYCgdhZGRyZXNzGAkgASgJUgdhZGRyZXNzEhYKBmdlbmRlchgKIAEoCVIGZ2VuZGVyEhsKCWltYWdlX3VybBgLIAEoCVIIaW1hZ2VVcmw=');
@$core.Deprecated('Use genderReadRequestDescriptor instead')
const GenderReadRequest$json = const {
  '1': 'GenderReadRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GenderReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genderReadRequestDescriptor = $convert.base64Decode('ChFHZW5kZXJSZWFkUmVxdWVzdBIOCgJpZBgBIAEoA1ICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use genderReadResponseDescriptor instead')
const GenderReadResponse$json = const {
  '1': 'GenderReadResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'results', '3': 3, '4': 3, '5': 11, '6': '.Profile.GenderReadRequest', '10': 'results'},
  ],
};

/// Descriptor for `GenderReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genderReadResponseDescriptor = $convert.base64Decode('ChJHZW5kZXJSZWFkUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXMSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRI0CgdyZXN1bHRzGAMgAygLMhouUHJvZmlsZS5HZW5kZXJSZWFkUmVxdWVzdFIHcmVzdWx0cw==');
@$core.Deprecated('Use busReadResponseDescriptor instead')
const BusReadResponse$json = const {
  '1': 'BusReadResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'image_url', '3': 3, '4': 1, '5': 9, '10': 'imageUrl'},
    const {'1': 'departure_station', '3': 4, '4': 1, '5': 9, '10': 'departureStation'},
    const {'1': 'arrival_station', '3': 5, '4': 1, '5': 9, '10': 'arrivalStation'},
    const {'1': 'departure_time', '3': 6, '4': 1, '5': 9, '10': 'departureTime'},
    const {'1': 'arrival_time', '3': 7, '4': 1, '5': 9, '10': 'arrivalTime'},
    const {'1': 'range_time', '3': 8, '4': 1, '5': 9, '10': 'rangeTime'},
    const {'1': 'price', '3': 9, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'seat_type', '3': 10, '4': 1, '5': 9, '10': 'seatType'},
  ],
};

/// Descriptor for `BusReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List busReadResponseDescriptor = $convert.base64Decode('Cg9CdXNSZWFkUmVzcG9uc2USDgoCaWQYASABKANSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGwoJaW1hZ2VfdXJsGAMgASgJUghpbWFnZVVybBIrChFkZXBhcnR1cmVfc3RhdGlvbhgEIAEoCVIQZGVwYXJ0dXJlU3RhdGlvbhInCg9hcnJpdmFsX3N0YXRpb24YBSABKAlSDmFycml2YWxTdGF0aW9uEiUKDmRlcGFydHVyZV90aW1lGAYgASgJUg1kZXBhcnR1cmVUaW1lEiEKDGFycml2YWxfdGltZRgHIAEoCVILYXJyaXZhbFRpbWUSHQoKcmFuZ2VfdGltZRgIIAEoCVIJcmFuZ2VUaW1lEhQKBXByaWNlGAkgASgCUgVwcmljZRIbCglzZWF0X3R5cGUYCiABKAlSCHNlYXRUeXBl');
@$core.Deprecated('Use busReadListResponseDescriptor instead')
const BusReadListResponse$json = const {
  '1': 'BusReadListResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'results', '3': 3, '4': 3, '5': 11, '6': '.Profile.BusReadResponse', '10': 'results'},
  ],
};

/// Descriptor for `BusReadListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List busReadListResponseDescriptor = $convert.base64Decode('ChNCdXNSZWFkTGlzdFJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USMgoHcmVzdWx0cxgDIAMoCzIYLlByb2ZpbGUuQnVzUmVhZFJlc3BvbnNlUgdyZXN1bHRz');
@$core.Deprecated('Use busReadRequestDescriptor instead')
const BusReadRequest$json = const {
  '1': 'BusReadRequest',
};

/// Descriptor for `BusReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List busReadRequestDescriptor = $convert.base64Decode('Cg5CdXNSZWFkUmVxdWVzdA==');
