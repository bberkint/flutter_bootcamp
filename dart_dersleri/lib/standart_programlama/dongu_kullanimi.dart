void main(List<String> args) {
  for (var i = 1; i < 4; i++) {
    print(i);
  }

  //10 ile 20 arasında 5 er artma
  for (var i = 10; i <= 20; i += 5) {
    print(i);
  }

  //1,2,3
  var sayac = 1;
  while (sayac < 4) {
    print("Döngü : $sayac");
    sayac += 1; // sayac ++, sayac = sayac + 1
  }

  //1,2,3,4,5
  for (var i = 1; i <= 5; i += 1) {
    if (i == 3) {
      break;
    }
    print(i);
  }

  // 3 ü pas geçer ve onu yazmaz.
  for (var i = 1; i <= 5; i += 1) {
    if (i == 3) {
      continue;
    }
    print(i);
  }
}
