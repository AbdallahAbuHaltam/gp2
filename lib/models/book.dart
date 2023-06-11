import 'package:derbyjo/models/game.dart';
import 'package:derbyjo/models/player.dart';
import 'package:flutter/material.dart';

class Book {
  String? playgroundName;
  String? size;
  String? status;
  int? noPlayers;
  Players? player;
  double? price;
  DateTime? date;
  TimeOfDay? time;
  String? bookId;

  Book(
      {this.playgroundName,
      this.size,
      this.status,
      this.noPlayers,
      this.player,
      this.price,
      this.date,
      this.time,
      this.bookId});

  Map<String, dynamic> toMap() {
    return {
      'playgoundName': playgroundName,
      'Number of Players': noPlayers,
      'price': price,
      'date': date,
      'time': time,
      'Player Name': player?.username,
      'Phone number': player?.phoneNo,
      'PlayerId': player?.uId,
      'bookId': bookId,
    };
  }
}
