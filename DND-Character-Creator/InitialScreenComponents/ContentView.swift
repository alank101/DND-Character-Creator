//
//  ContentView.swift
//  DND-Character-Creator
//
//  Created by admin on 5/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var character: [CharacterModel] = [
        CharacterModel(name: "Create New Character", charClass: .no_class, charRace: .no_race, strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10, image: Image(systemName: "pencil,circle.fill")),
        CharacterModel(name: "Create New Character", charClass: .no_class, charRace: .no_race, strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10, image: Image(systemName: "pencil,circle.fill")),
        CharacterModel(name: "Create New Character", charClass: .no_class, charRace: .no_race, strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10, image: Image(systemName: "pencil,circle.fill"))
    ]
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach($character) { $character in
                        NavigationLink {
                            
                        } label: {
                            DetailPage()
                        }
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
