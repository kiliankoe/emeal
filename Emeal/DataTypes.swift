//
//  MenuDataTypes.swift
//  Emeal
//
//  Created by Kilian Költzsch on 16/08/15.
//  Copyright © 2015 Kilian Koeltzsch. All rights reserved.
//

import Foundation

// MARK: - OpenMensa

struct Canteen {
	let id: Int!
	let name: String!
	let city: String!
	let address: String!
	let coords: (Double, Double)!
}

struct Meal {
	let id: Int!
	let name: String!
	let category: String!
	let price: (Double, Double)!
	let ingredients: [Ingredient]!
}

enum Ingredient {
	case Alcohol
	case Vegetarian
	case Vegan
	case Pork
	case Beef
	case Garlic
	case None
}

// MARK: - Kartenservice

struct Transaction {
	let elements: [TransactionElement]!
	let totalPrice: Double!
}

struct TransactionElement {
	let date: NSDate!
	let location: String! // Not sure if this is always a canteen, no need to match it anyways
	let register: String!
	let type: KSType!
	let receiptNum: String!
	let name: String!
	let price: Double!
}

enum KSType {
	case Article
	case Charge
}
