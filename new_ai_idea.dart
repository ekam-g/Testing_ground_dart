double ai(String words) {
  List list = ['code', 'noo', 'test'];
  double Score = 0.0;
  for (var i = 0; i < list.length; i++) {
    if (words.contains(list[i])) {
      Score += 1.0;
    }
  }
  return Score;
}
