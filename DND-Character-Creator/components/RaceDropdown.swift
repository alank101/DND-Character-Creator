//
//  RaceDropdown.swift
//  DND-Character-Creator
//
//  Created by Alan on 5/14/22.
//

import SwiftUI
//we can use these components to pass around for the whole app
struct RaceDropdown: View {
    @Binding var character: CharacterModel
    var body: some View {
        Picker(selection: $character.charRace) {
            Text("Tiefling").tag(Race.tiefling)
            Text("Human").tag(Race.human)
            Text("Elf").tag(Race.elf)
            Text("Half Elf").tag(Race.half_elf)
            Text("Halfling").tag(Race.halfling)
            Text("Half Orc").tag(Race.half_orc)
            Text("Dwarf").tag(Race.dwarf)
            Text("Dragonborn").tag(Race.dragonborn)
            Text("Gnome").tag(Race.gnome)
            Text("No Race").tag(Race.no_race)
        } label: {
            Text("Picker")
        }.pickerStyle(MenuPickerStyle())
            .padding()
            .frame(height: 30)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.blue, lineWidth: 1.0).foregroundColor(.gray))
        
    }
}

struct RaceDropdown_Previews: PreviewProvider {
    static var previews: some View {
        RaceDropdown(character: .constant(CharacterModel(name: "", charClass: .barbarian, charRace: .elf, strength: 0, dexterity: 0 , constitution: 0, intelligence: 0, wisdom: 0, charisma: 0, image:Image(systemName: "pencil.circle.fill") )))
    }
}
