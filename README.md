# User Builder Pattern Implementation

This repository demonstrates the implementation of the Builder design pattern for a `User` class in Dart/Flutter.

## Overview

The Builder pattern helps construct complex objects step by step. This implementation provides a flexible way to create `User` objects with required and optional fields.

## Key Features

- **Required fields**: `firstName` and `lastName` must be provided during initialization.
- **Optional fields**: `age` and `phone` can be set using method chaining.
- **Clean syntax**: Easy-to-read object creation.
- **Immutable objects**: The `User` class is immutable.

## Code Structure

- **`user.dart`**: Contains the `User` class and `UserBuilder` implementation.
  - `User` class is immutable with `final` fields.
  - `UserBuilder` provides a fluent interface for setting optional properties.

## Usage Example

```dart
// Create a basic user with only required fields
final basicUser = UserBuilder(
  firstName: 'Mohamed',
  lastName: 'Salah',
).build();

// Create a user with all fields
final fullUser = UserBuilder(
  firstName: 'Ahmed',
  lastName: 'Hany',
)
  ..setAge(23)
  ..setPhone('+201550918101')
  .build();
