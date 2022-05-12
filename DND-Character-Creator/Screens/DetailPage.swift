//
//  DetailPage.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//
//alan's screen

import SwiftUI

struct DetailPage: View {
    let character: CharacterModel = CharacterModel(name: "", charClass: .no_class, charRace: .no_race, strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10, image: Image(systemName: "pencil.circle.fill"))
    
    var body: some View {
        VStack {
            HStack {
                character.image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                Spacer()
                VStack(alignment: .leading) {
                    HStack {
                        Text("Class:")
                            .font(.caption)
                        Text(character.charClass.rawValue)
                            .font(.caption)
                    }
                    HStack {
                        Text("Race:")
                            .font(.caption)
                        Text(character.charRace.rawValue)
                            .font(.caption)
                    }
                    HStack {
                        Text("Strength:")
                            .font(.caption)
                        Text("\(character.strength)")
                            .font(.caption)
                    }
                    HStack {
                        Text("Dexterity:")
                            .font(.caption)
                        Text("\(character.dexterity)")
                            .font(.caption)
                    }
                    HStack {
                        Text("Constitution:")
                            .font(.caption)
                        Text("\(character.constitution)")
                            .font(.caption)
                    }
                    HStack {
                        Text("Intelligence:")
                            .font(.caption)
                        Text("\(character.intelligence)")
                            .font(.caption)
                    }
                    HStack {
                        Text("Wisdom:")
                            .font(.caption)
                        Text("\(character.wisdom)")
                            .font(.caption)
                    }
                    HStack {
                        Text("Charisma:")
                            .font(.caption)
                        Text("\(character.charisma)")
                            .font(.caption)
                    }
                }
            }
        }.padding()
        
        
        
        //if none are present, maybe we need to have a conditional screen --> boolean based if data is present or not
        
        
        //image
        //character traits vstack with prefilled in data from other screen
        //this needs to be array based
        
        
        //        Button  Deploy Character // maybe we need to change this
        
        
        //balls in your court now
    }
}

struct DetailPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailPage()
    }
}
