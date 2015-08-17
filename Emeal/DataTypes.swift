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
	case Alcohol, Vegetarian, Vegan, Pork, Beef, Garlic, None
}

// MARK: - Kartenservice

struct Transaction {
	let date: NSDate!
	let location: String! // Not sure if this is always a canteen, no need to match it anyways
	let register: String!
	let type: KSType!
	let receiptNum: String!
	var elements: [TransactionElement]!
	let totalPrice: Double!
}

struct TransactionElement {
	let name: String!
	let price: Double!
}

enum KSType {
	case Article, Charge
}

struct KSUserData {
	let cardnumber: Int!
	let message: String! // No clue what this is for
	let bankcode: Int!
	let bankAccountNumber: Int! // Only displaying the first three digits
	let chargeAmount: Double!
	let limitAmount: Double!
//	let password: String! // Wot?! I'd rather not throw this in here... Why the hell is it being displayed anyways?!
}
