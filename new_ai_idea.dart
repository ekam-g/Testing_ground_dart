import 'package:string_similarity/string_similarity.dart';

extension on String {
  List<String> splitByLength(int length) =>
      [substring(0, length), substring(length)];
}

double aiMany(String words, String mode) {
  List PassivePhrase = [
    'not good'
        'no one likes',
    'no one',
    'go to',
    'suck my',
    "I didn't know you meant now.",
    "not very good",
    "never improve",
    'never do anything',
    'do good for once',
    'for once be nice',
    'never nice',
    'you never',
    "I don't mean to be rude",
    "You're so lucky",
    "only you",
    "too sensitive",
    'that what',
    "I’m not",
    "I don’t understand",
    "not mad",
    "Is that what you",
    "it almost",
    "i wish",
    "you know",
    "you should",
    'is that what you',
    "I didn't understand",
  ];
  List GasPhrase = [
    'stop being',
    'your just',
    'being emotional',
    'that never',
    'your over',
    'take a joke',
    'stop taking',
    'your being',
    'the problem is you',
    "that wasn't my",
    'i think you',
    'just forget',
    'stop making',
    'all your',
    'you are',
  ];
  List Exeptions = ['next time', 'your good', 'work on'];
  double Score = 0.0;
  List list;
  List whatWord = words.splitByLength(100);
  if (mode == "pas") {
    list = PassivePhrase;
    for (var x = 0; x < whatWord.length; x++) {
      String word = whatWord[x];
      for (var i = 0; i < list.length; i++) {
        print(word.similarityTo(list[i]));
        print(list[i]);
        if (word.similarityTo(list[i]) > 0.30) {
          Score += 1.0;
        }
      }
    }
  }
  if (mode == "gas") {
    list = GasPhrase;
    for (var i = 0; i < list.length; i++) {
      if (words.similarityTo(list[i]) > 0.4) {
        Score += 1.0;
      }
    }
  }
  list = Exeptions;
  for (var i = 0; i < list.length; i++) {
    if (words.similarityTo(list[i]) > 0.6) {
      Score -= 1.0;
    }
  }
  return Score;
}
