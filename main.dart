import 'testingcross.dart';

int a = 1;
int b = 0;

void main() {
  code();
  addingDemo();
  p("done");
}

class code {
  code() {
    for (int i = 0; i < 10000000; i += 1) {
      p("i = $i ");
      if (b < 5) {
        b += 1;
      }
      while (b == 5) {
        p("b = $b ");
        if (i == 50000) {
          p("worked");
          return;
        }
        break;
      }
    }
  }
}


class addingDemo {
  int a = 1;
  int b = 3;
  addingDemo() {
   int c = add(a, b);
    p("$c");
  }
}