//
//  DataModel.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//

import Foundation
//need your help in finishing this!!
enum Class: String{
    case lord, serf, maiden, priest, knight
}

enum Race: String{
    case ogre, knight, witcher, elf
}


struct CharacterModel: Identifiable{
    var id = UUID().uuidString
    var name = String()
    var strength = Int()
    
}

//random number generator
//let randomInt = Int.random(in: 1..<5)
//let randomFloat = Float.random(in: 1..<10)
//let randomDouble = Double.random(in: 1...100)
//let randomCGFloat = CGFloat.random(in: 1...1000)

/// picture --> array
