part of '../../twa.dart';

final class RequestContactResult extends Equatable {
  final String status;
  final RequestContactResultResponse? response;
  final RequestContactResultResponseUnsafe? responseUnsafe;

  const RequestContactResult({required this.status, required this.response, required this.responseUnsafe});

  const RequestContactResult.fake({
    this.status = 'fake',
    this.response = const RequestContactResultResponse.fake(),
    this.responseUnsafe,
  });
  @override
  List<String> get props => ["status: $status", "response: $response", "responseUnsafe: $responseUnsafe"];
}
