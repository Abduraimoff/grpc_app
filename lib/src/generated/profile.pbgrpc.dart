///
//  Generated code. Do not modify.
//  source: profile.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'profile.pb.dart' as $0;
export 'profile.pb.dart';

class RhanovServiceClient extends $grpc.Client {
  static final _$doGenderRead =
      $grpc.ClientMethod<$0.GenderReadRequest, $0.GenderReadResponse>(
          '/Profile.RhanovService/DoGenderRead',
          ($0.GenderReadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GenderReadResponse.fromBuffer(value));
  static final _$doCustomerCreate =
      $grpc.ClientMethod<$0.CustomerCreateRequest, $0.CustomerReadResponse>(
          '/Profile.RhanovService/DoCustomerCreate',
          ($0.CustomerCreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CustomerReadResponse.fromBuffer(value));
  static final _$doCustomerRead =
      $grpc.ClientMethod<$0.CustomerReadRequest, $0.CustomerReadResponse>(
          '/Profile.RhanovService/DoCustomerRead',
          ($0.CustomerReadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CustomerReadResponse.fromBuffer(value));
  static final _$doBusListRead =
      $grpc.ClientMethod<$0.BusReadRequest, $0.BusReadListResponse>(
          '/Profile.RhanovService/DoBusListRead',
          ($0.BusReadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BusReadListResponse.fromBuffer(value));

  RhanovServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GenderReadResponse> doGenderRead(
      $0.GenderReadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$doGenderRead, request, options: options);
  }

  $grpc.ResponseFuture<$0.CustomerReadResponse> doCustomerCreate(
      $0.CustomerCreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$doCustomerCreate, request, options: options);
  }

  $grpc.ResponseFuture<$0.CustomerReadResponse> doCustomerRead(
      $0.CustomerReadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$doCustomerRead, request, options: options);
  }

  $grpc.ResponseFuture<$0.BusReadListResponse> doBusListRead(
      $0.BusReadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$doBusListRead, request, options: options);
  }
}

abstract class RhanovServiceBase extends $grpc.Service {
  $core.String get $name => 'Profile.RhanovService';

  RhanovServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GenderReadRequest, $0.GenderReadResponse>(
        'DoGenderRead',
        doGenderRead_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GenderReadRequest.fromBuffer(value),
        ($0.GenderReadResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CustomerCreateRequest, $0.CustomerReadResponse>(
            'DoCustomerCreate',
            doCustomerCreate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CustomerCreateRequest.fromBuffer(value),
            ($0.CustomerReadResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CustomerReadRequest, $0.CustomerReadResponse>(
            'DoCustomerRead',
            doCustomerRead_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CustomerReadRequest.fromBuffer(value),
            ($0.CustomerReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BusReadRequest, $0.BusReadListResponse>(
        'DoBusListRead',
        doBusListRead_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BusReadRequest.fromBuffer(value),
        ($0.BusReadListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GenderReadResponse> doGenderRead_Pre($grpc.ServiceCall call,
      $async.Future<$0.GenderReadRequest> request) async {
    return doGenderRead(call, await request);
  }

  $async.Future<$0.CustomerReadResponse> doCustomerCreate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CustomerCreateRequest> request) async {
    return doCustomerCreate(call, await request);
  }

  $async.Future<$0.CustomerReadResponse> doCustomerRead_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CustomerReadRequest> request) async {
    return doCustomerRead(call, await request);
  }

  $async.Future<$0.BusReadListResponse> doBusListRead_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BusReadRequest> request) async {
    return doBusListRead(call, await request);
  }

  $async.Future<$0.GenderReadResponse> doGenderRead(
      $grpc.ServiceCall call, $0.GenderReadRequest request);
  $async.Future<$0.CustomerReadResponse> doCustomerCreate(
      $grpc.ServiceCall call, $0.CustomerCreateRequest request);
  $async.Future<$0.CustomerReadResponse> doCustomerRead(
      $grpc.ServiceCall call, $0.CustomerReadRequest request);
  $async.Future<$0.BusReadListResponse> doBusListRead(
      $grpc.ServiceCall call, $0.BusReadRequest request);
}
