import 'dart:math';

import "package:angular/angular.dart";
import 'package:ng_bootstrap/ng_bootstrap.dart';

@Component (selector: "progress-demo",
    templateUrl: "progress_demo.html",
    directives: const [BsProgressComponent])
class ProgressDemo {
  num max = 200;

  bool showWarning = false;

  num value;

  String type;

  List stacked = [];

  ProgressDemo() {
    random();
  }

  random() {
    value = new Random().nextInt(100);
    if (value < 25) {
      type = "success";
    } else if (value < 50) {
      type = "info";
    } else if (value < 75) {
      type = "warning";
    } else {
      type = "danger";
    }
    showWarning = type == "danger" || type == "warning";
  }
}