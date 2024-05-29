void main() {
  const year = 2400; // 判定する年

  if (isLeapYear(year)) {
    print('$year 年は閏年です');
  } else {
    print('$year 年は閏年ではありません');
  }
}

bool isLeapYear(int year) {
  // 4で割り切れる場合
  if (year % 4 == 0) {
    // 100で割り切れ、かつ400で割り切れない場合は閏年ではない
    if (year % 100 == 0) {
      return year % 400 == 0;
    }
    return true;
  }
  return false;
}
