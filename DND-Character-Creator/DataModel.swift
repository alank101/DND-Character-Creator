//
//  DataModel.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//

import Foundation

enum Class: String{
    case lord, serf, maiden, priest, knight
}

enum Race: String{
    case ogre, knight, witcher, elf
}
struct CharacterModel: Identifiable{
    var id = UUID().uuidString
}
