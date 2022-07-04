import 'new_ai_idea.dart';
import 'testingcross.dart';


void main() {
  // code();
  // addingDemo();
  // whileTest();
  String cool = "that was a very nice test your mug head";
  double data = 0.0;
  data = ai(cool);
  print(data);
}

int a = 1;
int b = 0;

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
  addingDemo() {
   a = add(2, 3);
    p("$a");
  }
}
class whileTest {
  whileTest() {
    int i = 0;
    while (i < 10) {
      p("i = $i ");
      i += 1;
    }
  }
}


