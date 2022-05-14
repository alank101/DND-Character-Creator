//
//  EditScreen.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//
//marvins page
import SwiftUI
//this probably needs to be a swift ui form

struct EditScreen: View {
    @Binding var character: CharacterModel
    var body: some View {
        VStack{
            Text("Character Creator")
            Spacer()
    //        Text("Character Creator")
            //need same font as initial screej
            
            //top part
            HStack {
                VStack{
                    // need two drop downs
                    //stacked on top of each other
    //                Dropdown(character: Binding<CharacterModel>)
//                    Text("\(character.name)")
                    ClassDropdown(character:  .constant(CharacterModel(name: "", charClass: .barbarian, charRace: .elf, strength: 0, dexterity: 0 , constitution: 0, intelligence: 0, wisdom: 0, charisma: 0, image:Image(systemName: "pencil.circle.fill"))))
    //                Dropdown(character: Binding<CharacterModel>)
//                    Text("\(character.name)")
                    RaceDropdown(character:   .constant(CharacterModel(name: "", charClass: .barbarian, charRace: .elf, strength: 0, dexterity: 0 , constitution: 0, intelligence: 0, wisdom: 0, charisma: 0, image:Image(systemName: "pencil.circle.fill") )))
                    
                    
                }
                //need image placement drop
                Image( "101")
                    .resizable()
                    .aspectRatio (contentMode: .fill)
                    .clipped()
                    .frame(height: 140)
            }
            .padding()
            Spacer()
            //center section filled with properties of character
            
            //only six options so we probably  only need to create just two hstacks
            // future reference, it we expand this, this could be a lazy grid
            
            VStack{
                HStack{
                    //3 character traits
                    //text field for each one
                    //maybe this needs to be its own struct
                    
                    
                    
                }
                HStack{
                    //3 character traits
                }
            }
            Spacer()
        }
        
        
        
        //NO BOTTOM PART THOUGHT I THINK ONE IS NEEDED
        
        
        
        
    }
}

struct EditScreen_Previews: PreviewProvider {
    static var previews: some View {
        EditScreen(character: .constant(CharacterModel(name: "gabriel", charClass: .barbarian, charRace: .elf, strength: 0, dexterity: 0 , constitution: 0, intelligence: 0, wisdom: 0, charisma: 0, image:Image(systemName: "pencil.circle.fill") )))
    }
}
