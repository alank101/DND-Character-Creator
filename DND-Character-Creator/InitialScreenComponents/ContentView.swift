//
//  ContentView.swift
//  DND-Character-Creator
//
//  Created by Alan on 5/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var character: [CharacterModel] = [
        CharacterModel(name: "Create New Character", charClass: .fighter, charRace: .human, strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10, image: Image(systemName: "pencil.circle.fill")),
        CharacterModel(name: "Create New Character", charClass: .no_class, charRace: .no_race, strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10, image: Image(systemName: "pencil.circle.fill")),
        CharacterModel(name: "Create New Character", charClass: .no_class, charRace: .no_race, strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10, image: Image(systemName: "pencil.circle.fill")),
    ]
    
    func add() {
        character.append(CharacterModel(name: "Create New Character", charClass: .fighter, charRace: .human, strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10, image: Image(systemName: "pencil.circle.fill")))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach($character) { $character in
                        NavigationLink {
                            EditScreen(pickedImage: .constant(""), character: $character)
                        } label: {
                            DetailPage(character: character)
                        }
                    }.onDelete { indexSet in
                        character.remove(atOffsets: indexSet)
                    }
                    .onMove { indices, newOffset in
                        character.move(fromOffsets: indices, toOffset: newOffset)
                    }
                }.navigationBarItems(leading: EditButton())
                    .toolbar {
                        Button {
                            add()
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
