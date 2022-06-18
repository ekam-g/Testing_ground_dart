int a = 1;
int b = 5;

void main() {
  for (int i = 0; i < 10000000; i += 1) {
    print("i = $i ");
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