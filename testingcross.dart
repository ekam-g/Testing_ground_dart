p(String p) {
  bool debug = true;
  if (debug == true) {
    print(p);
  } else {
    return;
  }
}

add(int a, int b) {
  b += a;
  return b;
}
