//
//  Dropdown.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//


//        Picker("Category", selection: $quotation.category) {
//        Text("Physics").tag(Category.physics)
//        Text("Habit").tag(Category.habit)
//        Text("Life").tag(Category.life)
//    }


import SwiftUI
//we can use these components to pass around for the whole app
struct Dropdown: View {
    @Binding var character: CharacterModel
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //dropdown menu//picker components
        Picker(selection: $character.charClass){
            Group{
                Text("Sorcerer").tag(Class.sorcerer)
                Text("Warlock").tag(Class.warlock)
                Text("Fighter").tag(Class.fighter)
                Text("Barbarian").tag(Class.barbarian)
                Text("Ranger").tag(Class.ranger)
                Text("Paladin").tag(Class.paladin)
                Text("Bard").tag(Class.bard)
                Text("Wizard").tag(Class.wizard)
                Text("Cleric").tag(Class.cleric)
                Text("Druid").tag(Class.druid)

            }
            Group{
                                Text("Rogue").tag(Class.rogue)
                                Text("Monk").tag(Class.monk)
                                Text("No Class").tag(Class.no_class)
            }
           
        } label: {
            Text("Picker")
        }
      

        
    }
}

struct Dropdown_Previews: PreviewProvider {
    static var previews: some View {
        Dropdown(character: .constant(CharacterModel(name: "", charClass: .barbarian, charRace: .elf, strength: 0, dexterity: 0 , constitution: 0, intelligence: 0, wisdom: 0, charisma: 0, image:Image(systemName: "pencil.circle.fill") )))
    }
}
