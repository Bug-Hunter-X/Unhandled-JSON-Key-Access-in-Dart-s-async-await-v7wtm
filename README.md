# Unhandled JSON Key Access in Dart's async/await

This repository demonstrates a common error in Dart when working with asynchronous operations and JSON responses. The code attempts to access a key that might not exist in the JSON, leading to an unexpected runtime exception if not properly handled.

The `bug.dart` file contains the erroneous code.  `bugSolution.dart` provides a corrected version.

**Problem:** The original code lacks proper error handling for the scenario where the expected key is missing from the JSON response. This can cause the application to crash or behave unpredictably.

**Solution:** The solution involves adding checks to ensure the key exists before accessing its value. This is best done using the `containsKey()` method or optional operators.