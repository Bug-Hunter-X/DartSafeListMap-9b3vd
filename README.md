# Dart: Out-of-bounds List Access and Missing Map Key

This repository demonstrates a common error in Dart: accessing an element in a list or a key in a map without proper error handling. The code fetches data from a JSON API and tries to access nested data without checking for its existence.  This can result in runtime exceptions.

The `bug.dart` file showcases the problematic code, while `bugSolution.dart` provides a corrected version with robust error handling.  The solution includes null checks and conditional access to prevent exceptions.