//
//  SwiftFormatDemo.swift
//  CleanCode
//
//  Created by Sergei Fonov on 29.11.22.
//

import Foundation

// MARK: - Identifier Name Violation: Enum element name should start with a lowercase character: 'Mars'
enum SolarSystem: String {
  case Sun, Saturn, Mars
}

// MARK: - swiftformat comment

// swiftformat:disable identifier_name
enum Foo {
  case bar, baz
 }
// swiftformat:enable identifier_name

protocol XClass: class {}

func printPlanet() {
  // MARK: - Statement Position Violation: Else and catch should be on the same line, one space after the previous declaration. (statement_position)
  if let planet = SolarSystem(rawValue: "Earth") {
    print(planet)
  }
  else {
    print(SolarSystem.Sun)
  }
}
