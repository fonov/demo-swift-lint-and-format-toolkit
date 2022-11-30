//
//  swiftLintDemo.swift
//  CleanCode
//
//  Created by Sergei Fonov on 29.11.22.
//

import Foundation
// MARK: - Forbiden indentificator Violation: No apple product name (no_apple_product_name)
enum iPad {
  case pro
  case mini
  case air
}

// swiftlint:disable type_name no_apple_product_name
enum iPhone {
  case pro
  case proMax
  case regular
  case regularMax
  case mini
}

// swiftlint:enable type_name no_apple_product_name

enum GreetingError: Error {
  case emptyString
}

func greeting(name: String) throws -> String {
  if name == " " {
    throw GreetingError.emptyString
  }

  return "Hello \(name)!"
}

func hey() {
  // MARK: - Force Try Violation: Force tries should be avoided. (force_try)

  try! greeting(name: "Segei")
}

// MARK: - Syntactic Sugar Violation: Shorthand syntactic sugar should be used, i.e. [Int] instead of Array<Int>. (syntactic_sugar)

var numbers: Array<Int> = []

// MARK: - Redundant Optional Initialization Violation: Initializing an optional variable with nil is redundant. (redundant_optional_initialization)

var number: Int? = nil

// 

class mySuperClass {}
