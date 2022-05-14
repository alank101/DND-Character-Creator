//
//  DetailPage.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//
//alan's screen

import SwiftUI

struct DetailPage: View {
    let character: CharacterModel
    var images = ["dwarf1", "dwarf2", "elf1", "elf2"]
    @Binding var pickedImage : String
    
    var body: some View {
        
        VStack {
            HStack {
                
                
                VStack {
                    Text(character.name)
                        .font(.caption)
//                    character.image
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 75)
                    
                    //images
                    ForEach(images, id: \.self ){
                        image in
                        Image(image)
                    }
                   
                    
                }
                
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
        
//        Picker("Images",selection: $images) {
//            ForEach(images , id: \.self){ image in
//                Image(image)
//            }
//
//        }
        
        
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
        DetailPage(character: CharacterModel(name: "Create New Character", charClass: .fighter, charRace: .human, strength: rolledStrength, dexterity: rolledDexterity, constitution: rolledConstitution, intelligence: rolledIntelligence, wisdom: rolledWisdom, charisma: rolledCharisma, image: Image(systemName: "pencil.circle.fill")), pickedImage: .constant(""))
    }
}
