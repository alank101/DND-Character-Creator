//
//  DataModel.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//
//alan's screen

import Foundation
import SwiftUI
//need your help in finishing this!!
enum Class: String{
    case sorcerer, warlock, fighter, barbarian, ranger, paladin, bard, wizard, cleric, druid, rogue, monk, no_class
}

enum Race: String{
    case human, elf, half_elf, dwarf, halfling, dragonborn, tiefling, gnome, half_orc, no_race
}


struct CharacterModel: Identifiable{
    var id = UUID().uuidString
    var name: String
    var charClass: Class
    var charRace: Race
    var strength: Int
    var dexterity: Int
    var constitution: Int
    var intelligence: Int
    var wisdom: Int
    var charisma: Int
    var image: Image
}

let str1 = Int.random(in: 1...6)
let str2 = Int.random(in: 1...6)
let str3 = Int.random(in: 1...6)

let dex1 = Int.random(in: 1...6)
let dex2 = Int.random(in: 1...6)
let dex3 = Int.random(in: 1...6)

let con1 = Int.random(in: 1...6)
let con2 = Int.random(in: 1...6)
let con3 = Int.random(in: 1...6)

let int1 = Int.random(in: 1...6)
let int2 = Int.random(in: 1...6)
let int3 = Int.random(in: 1...6)

let wis1 = Int.random(in: 1...6)
let wis2 = Int.random(in: 1...6)
let wis3 = Int.random(in: 1...6)

let cha1 = Int.random(in: 1...6)
let cha2 = Int.random(in: 1...6)
let cha3 = Int.random(in: 1...6)

var rolledStrength = str1 + str2 + str3
var rolledDexterity = dex2 + dex2 + dex3
var rolledConstitution = con1 + con2 + con3
var rolledIntelligence = int1 + int2 + int3
var rolledWisdom = wis1 + wis2 + wis3
var rolledCharisma = cha1 + cha2 + cha3


//random number generator
//let randomInt = Int.random(in: 1..<5)
//let randomFloat = Float.random(in: 1..<10)
//let randomDouble = Double.random(in: 1...100)
//let randomCGFloat = CGFloat.random(in: 1...1000)

/// picture --> array
