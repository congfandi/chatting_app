import 'package:cloud_firestore/cloud_firestore.dart';

class Chat {
  Chat({
      this.id, 
      this.sender, 
      this.receiver, 
      this.createdAt, 
      this.conversations,});

  Chat.fromJson(dynamic json) {
    id = json['id'];
    sender = json['sender'];
    receiver = json['receiver'];
    createdAt = json['createdAt'];
    if (json['conversations'] != null) {
      conversations = [];
      json['conversations'].forEach((v) {
        conversations?.add(Conversation.fromJson(v));
      });
    }
  }
  String? id;
  String? sender;
  String? receiver;
  Timestamp? createdAt;
  List<Conversation>? conversations;
Chat copyWith({  String? id,
  String? sender,
  String? receiver,
  Timestamp? createdAt,
  List<Conversation>? conversations,
}) => Chat(  id: id ?? this.id,
  sender: sender ?? this.sender,
  receiver: receiver ?? this.receiver,
  createdAt: createdAt ?? this.createdAt,
  conversations: conversations ?? this.conversations,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['sender'] = sender;
    map['receiver'] = receiver;
    map['createdAt'] = createdAt;
    if (conversations != null) {
      map['conversations'] = conversations?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Conversation {
  Conversation({
      this.isRead, 
      this.message, 
      this.sender, 
      this.sendAt,});

  Conversation.fromJson(dynamic json) {
    isRead = json['isRead'];
    message = json['message'];
    sender = json['sender'];
    sendAt = json['sendAt'];
  }
  bool? isRead;
  String? message;
  String? sender;
  Timestamp? sendAt;
Conversation copyWith({  bool? isRead,
  String? message,
  String? sender,
  Timestamp? sendAt,
}) => Conversation(  isRead: isRead ?? this.isRead,
  message: message ?? this.message,
  sender: sender ?? this.sender,
  sendAt: sendAt ?? this.sendAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isRead'] = isRead;
    map['message'] = message;
    map['sender'] = sender;
    map['sendAt'] = sendAt;
    return map;
  }

}