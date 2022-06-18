int a = 1;
int b = 0;

void main() {
  code();
  demo(1,2);
}

class code {
  code() {
    for (int i = 0; i < 10000000; i += 1) {
      print("i = $i ");
      if (b < 5) {
        b += 1;
      }
      while (b == 5) {
        print("b = $b ");
        if (i == 50000) {
          print("worked");
          return;
        }
        break;
      }
    }
  }
}

class demo {
  demo(int t, int ti) {
    print("find");
    print("a = $t b = $ti");
  }
}
