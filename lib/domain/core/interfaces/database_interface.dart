import 'package:chatting_app/domain/models/app_user.dart';
import 'package:chatting_app/domain/models/chat.dart';

abstract class DatabaseInterface {
  Future<void> sendMessage(String message,String chatId);

  Stream<List<Chat>> getMessages();

  Future<AppUser> getUser();

  Future<void> updateUser(AppUser user);

  Future<void> updateLastLogin(String lastLogin);

  Future<void> updatePicture(String picture);

  Future<void> updateName(String name);

  Future<void> newMessage(String uid);
}
