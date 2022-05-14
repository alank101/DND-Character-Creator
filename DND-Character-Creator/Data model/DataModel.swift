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
    case human, elf, half_elf, dwarf, halfling, tiefling, gnome, half_orc, no_race
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


var rolledStrength = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
var rolledDexterity = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
var rolledConstitution = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
var rolledIntelligence = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
var rolledWisdom = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
var rolledCharisma = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)


//random number generator
//let randomInt = Int.random(in: 1..<5)
//let randomFloat = Float.random(in: 1..<10)
//let randomDouble = Double.random(in: 1...100)
//let randomCGFloat = CGFloat.random(in: 1...1000)

/// picture --> array
