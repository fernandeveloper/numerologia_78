int selectedDay = 8;
int selectedMonth = 6;
int selectedYear = 1985;
int year = 2000;

int reduceToSingleDigit(int num) {
  while (num > 11) {
    num = num ~/ 10 + num % 10;
  }
  return num;
}

int sumDigits(int number) {
  int sum = 0;
  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }
  return sum;
}

int sumarDigitos(int numero) {
  int suma = 0;

  while (numero > 0) {
    int digito = numero % 10;
    suma += digito;
    numero ~/= 10;
  }

  return suma;
}

int calculateCenterValue() {
  int reducedDay = reduceToSingleDigit(selectedDay);
  int reducedMonth = reduceToSingleDigit(selectedMonth);

  int reducedYear = selectedYear % 100;
  if (selectedYear == 2000 || selectedYear == 2001) {
    reducedYear = selectedYear % 100;
  } else {
    reducedYear = reduceToSingleDigit(reducedYear);
  }

  return sumarDigitos(reducedDay + reducedYear + reducedMonth + 1);
}

int sumDateDigits() {
  int reducedDay = (selectedDay);
  int reducedMonth = (reduceToSingleDigit(selectedMonth));
  int year = (reduceToSingleDigit(selectedYear));

  int totalSum =
      sumDigits(reducedDay) + sumDigits(reducedMonth) + sumDigits(year);

  if (totalSum == 11 || totalSum == 10) {
    return totalSum > 11 ? 11 : totalSum;
  } else {
    int total = reduceToSingleDigit(totalSum);
    return total;
  }
}
