import 'package:derbyjo/models/game.dart';
import 'package:flutter/material.dart';

class Book {
  Game? game; //game Type
  int? noPlayers;
  String? price;
  DateTime? date;
  TimeOfDay? time;
  String? bookId;

  Book(
      {this.game,
      this.noPlayers,
      this.price,
      this.date,
      this.time,
      this.bookId});

  Map<String, dynamic> toMap() {
    return {
      'playgoundName': game?.playgroundName,
      'GameId': game?.gameId,
      'Number of Players': noPlayers,
      'price': price,
      'date': date,
      'time': time,
      'Player Name': game?.player?.username,
      'Phone number': game?.player?.phoneNo,
      'bookId': bookId,
    };
  }
}