//
//  ClassDropdown.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//





import SwiftUI
//we can use these components to pass around for the whole app
struct ClassDropdown: View {
    @Binding var character: CharacterModel
    var body: some View {
        Picker(selection: $character.charClass) {
            Group {
                Text("Sorcerer").tag(dndClass.sorcerer)
                Text("Warlock").tag(dndClass.warlock)
                Text("Fighter").tag(dndClass.fighter)
                Text("Barbarian").tag(dndClass.barbarian)
                Text("Ranger").tag(dndClass.ranger)
                Text("Paladin").tag(dndClass.paladin)
                Text("Bard").tag(dndClass.bard)
                Text("Wizard").tag(dndClass.wizard)
                Text("Cleric").tag(dndClass.cleric)
                Text("Druid").tag(dndClass.druid)
            }
            Group {
                Text("Rogue").tag(dndClass.rogue)
                Text("Monk").tag(dndClass.monk)
                Text("No Class").tag(dndClass.no_class)
            }
        } label: {
            Text("Picker")
        }.pickerStyle(MenuPickerStyle())
            .padding()
            .frame(height: 30)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.blue, lineWidth: 1.0).foregroundColor(.gray))
            
    }
}

struct ClassDropdown_Previews: PreviewProvider {
    static var previews: some View {
        ClassDropdown(character: .constant(CharacterModel(name: "", charClass: .barbarian, charRace: .elf, strength: 0, dexterity: 0 , constitution: 0, intelligence: 0, wisdom: 0, charisma: 0, image:Image(systemName: "pencil.circle.fill") )))
    }
}
