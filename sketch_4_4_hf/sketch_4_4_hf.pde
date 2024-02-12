void setup() {
  // Voorbeeldgegevens
  double number = 16.0;
  double angleInRadians = PI / 4; // 45 graden in radialen

  // 1. Vierkantswortel berekenen
  float floatNumber = (float) number; // Cast to float
  float squareRootResult = sqrt(floatNumber);
  println("Vierkantswortel van " + number + " is: " + squareRootResult);

  // 2. Sinus berekenen
  float floatAngle = (float) angleInRadians; // Cast to float
  float sinResult = sin(floatAngle);
  println("Sinus van " + angleInRadians + " radianen is: " + sinResult);

  // 3. Maximumwaarde berekenen
  float maxValue = max(10.5, 8.3); // Note: max function can handle doubles directly
  println("Het maximum van 10.5 en 8.3 is: " + maxValue);
}
