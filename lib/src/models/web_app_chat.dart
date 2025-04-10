part of '../../twa.dart';

final class WebAppChat extends Equatable {
  final int id;
  final String title;
  final String type;
  final String? username;
  final String? photoUrl;

  const WebAppChat({
    required this.id,
    required this.title,
    required this.username,
    required this.type,
    required this.photoUrl,
  });

  const WebAppChat.fake({
    this.id = -1,
    this.title = 'fake',
    this.type = 'fake',
    this.username = 'fake',
    this.photoUrl = 'fake',
  });
  @override
  List<String> get props => ["id: $id", "title: $title", "type: $type", "username: $username", "photoUrl: $photoUrl"];
}
