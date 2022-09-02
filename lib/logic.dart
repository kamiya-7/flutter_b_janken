import 'dart:math' as math;

class Game {
  final List<String> jankenHands = ['Gu', 'Choki', 'Pa'];

  String makeComputerHand() {
    return jankenHands[math.Random().nextInt(3)];
  }

  String judgeResult(String userHand, String computerHand) {
    
    if (userHand == computerHand) {
      return 'DROW';
    } else if (userHand == 'Gu' && computerHand == 'Pa') {
      return 'LOSE';
    } else if (userHand == 'Gu' && computerHand == 'Choki') {
      return 'WIN';
    } else if (userHand == 'Choki' && computerHand == 'Pa') {
      return 'WIN';
    } else if (userHand == 'Choki' && computerHand == 'Gu') {
      return 'LOSE';
    } else if (userHand == 'Pa' && computerHand == 'Choki') {
      return 'LOSE';
    } 
    return 'WIN';
  }
}
