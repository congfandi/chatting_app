import 'package:chatting_app/domain/core/interfaces/database_interface.dart';
import 'package:chatting_app/domain/models/app_user.dart';
import 'package:chatting_app/domain/models/chat.dart';
import 'package:chatting_app/infrastructure/dal/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DatabaseService implements DatabaseInterface {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final AuthService _authService = AuthService();

  bool _checkUser(String uid) {
    _firestore.collection('users').doc(uid).get().then((value) {
      if (value.exists) {
        return true;
      } else {
        return false;
      }
    });
    return true;
  }

  @override
  Stream<List<Chat>> getMessages() {
    return _firestore
        .collection('chatting')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
            (event) => event.docs.map((e) => Chat.fromJson(e.data())).toList());
  }

  @override
  Future<AppUser> getUser() {
    return _firestore
        .collection('users')
        .doc(_authService.getCurrentUser()?.uid ?? '')
        .get()
        .then((value) => AppUser.fromJson(value.data()!));
  }

  @override
  Future<void> newMessage(String uid) {
    if (!_checkUser(uid)) {
      Get.snackbar("Error", "User not found");
      return Future.error("User not found");
    }
    return _firestore.collection('chatting').doc(uid).update(Chat(
          createdAt: Timestamp.fromMillisecondsSinceEpoch(
              DateTime.now().millisecondsSinceEpoch),
          receiver: uid,
          sender: _authService.getCurrentUser()?.uid ?? '',
          conversations: [
            Conversation(
              sendAt: Timestamp.fromMillisecondsSinceEpoch(
                  DateTime.now().millisecondsSinceEpoch),
              message: "",
              sender: _authService.getCurrentUser()?.uid ?? '',
            )
          ],
        ).toJson());
  }

  @override
  Future<void> sendMessage(String message, String chatId) {
    return _firestore.collection('chatting').doc(chatId).update(Chat(
          conversations: [
            Conversation(
              sendAt: Timestamp.fromMillisecondsSinceEpoch(
                  DateTime.now().millisecondsSinceEpoch),
              message: message,
              sender: _authService.getCurrentUser()?.uid ?? '',
            )
          ],
        ).toJson());
  }

  @override
  Future<void> updateLastLogin(String lastLogin) {
    // TODO: implement updateLastLogin
    throw UnimplementedError();
  }

  @override
  Future<void> updateName(String name) {
    // TODO: implement updateName
    throw UnimplementedError();
  }

  @override
  Future<void> updatePicture(String picture) {
    // TODO: implement updatePicture
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser(AppUser user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
