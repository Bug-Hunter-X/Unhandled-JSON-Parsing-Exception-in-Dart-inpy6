# Unhandled JSON Parsing Exception in Dart

This repository demonstrates a common error in Dart applications: unhandled exceptions during JSON parsing.  The `bug.dart` file contains code that attempts to access JSON data without properly checking for the existence of keys or validating data types. This can lead to runtime errors if the JSON structure is unexpected.

The solution, provided in `bugSolution.dart`, addresses this issue by adding robust error handling and input validation.