#include <iostream>

// Function to add two variables and return the result
int add(int a, int b) {
    return a + b;
}

int main() {
  // Print a hidden message to the console (not visible to the user)
  std::cout << "hello - you can't see me" << std::endl;
  
  // Print a visible message to the console
  std::cout << "NOW YOU CAN" << std::endl;

  // Call the add function with two parameters and store the result in a new variable
  int result = add(5, 10);
  
  // Print the result to the console
  std::cout << "The result of addition is: " << result << std::endl;

  return 0; // Indicate successful program termination
}
