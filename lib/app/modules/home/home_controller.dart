import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/app/modules/home/components/dialogs.dart';
import 'package:tic_tac_toe/core/utils/key_storage.dart';

class HomeController extends GetxController {
  //List of observable positions
  final _board = ['', '', '', '', '', '', '', '', ''].obs;
  List<String> get board => this._board;
  set board(value) => this._board.value = value;

  //List of winning sequences
  var winning_sequences = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];

  //Map with indicator option
  var simbols = {
    'options': ['X', 'O'],
  };

  //Variable that informs end of game
  final _gameOver = false.obs;
  get gameOver => this._gameOver.value;
  set gameOver(value) => this._gameOver.value = value;

  //variable that changes the indicator
  final _turn_index = 0.obs;
  get turn_index => this._turn_index.value;
  change_turn_index() => this._turn_index.value =
      _turn_index.value == 0 ? _turn_index.value = 1 : _turn_index.value = 0;

  //variable that informs the number of moves that were made
  final _count_touch = 0.obs;
  get count_touch => this._count_touch.value;
  set count_touch(value) => this._count_touch.value = value;

  make_play(position) {
    //check if the game is over
    if (gameOver) {
      return false;
    }
    //checks if the selected position is empty
    if (board[position] == '') {
      //add the current indicator to the position given
      board[position] = simbols['options']![turn_index];

      //Checks if the current sequence is in the winning sequences list
      var winning_sequences_index =
          check_winning_sequences(simbols['options']![turn_index]);

      //increment count_touch
      count_touch = count_touch + 1;

      //End game if there is a winning sequence
      if (winning_sequences_index >= 0) {
        game_is_over();
      } else {
        //End game if all positions busy
        if (count_touch == 9) {
          noWinner();
        } else {
          //Change the indicator
          change_turn_index();
        }
      }
      return true;
    } else {
      return false;
    }
  }

  noWinner() {
    gameOver = true;
    //Dialog if no winner
    dialogs.noWinner(
        onConfirm: () =>
            {cleanPositions(), count_touch = 0, gameOver = false, Get.back()},
        onCancel: () => exit(0));
  }

  game_is_over() {
    gameOver = true;
    var winnerPlayer = turn_index == 0 ? 1 : 2;
    // increment
    scoreboard['Player $winnerPlayer'] =
        scoreboard['Player $winnerPlayer']! + 1;

    //write scoreboard map in get storage
    box.write('scoreboard', scoreboard);

    //Dialog if winner
    dialogs.game_is_over(
        winnerPlayer: 'player $winnerPlayer',
        onConfirm: () =>
            {cleanPositions(), count_touch = 0, gameOver = false, Get.back()},
        onCancel: () => exit(0));
  }

  check_winning_sequences(simbol) {
    for (var i = 0; i < winning_sequences.length; i++) {
      if ((board[winning_sequences[i][0]] == simbol) &&
          (board[winning_sequences[i][1]] == simbol) &&
          (board[winning_sequences[i][2]] == simbol)) {
        return i;
      }
    }
    return -1;
  }

  cleanPositions() {
    board = ['', '', '', '', '', '', '', '', ''];
  }

  cleanScoreboard() {
    scoreboard['Player 1'] = 0;
    scoreboard['Player 2'] = 0;
    box.erase();
  }

  final _scoreboard = {
    "Player 1": 0,
    "Player 2": 0,
  }.obs;
  Map<String, int> get scoreboard => this._scoreboard;
  set scoreboard(value) => this._scoreboard.value = value;

  @override
  void onInit() {
    super.onInit();
    if (box.read('scoreboard') != null) {
      scoreboard['Player 1'] = box.read('scoreboard')['Player 1'];
      scoreboard['Player 2'] = box.read('scoreboard')['Player 2'];
    }
  }
}
