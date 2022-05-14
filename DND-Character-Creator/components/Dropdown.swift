//
//  Dropdown.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//

import SwiftUI
//we can use these components to pass around for the whole app
struct Dropdown: View {
    let character: CharacterModel
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //dropdown menu//picker components
        Picker(
            //        Picker("Category", selection: $quotation.category) {
            //        Text("Physics").tag(Category.physics)
            //        Text("Habit").tag(Category.habit)
            //        Text("Life").tag(Category.life)
            //    }
            
            
        } label: {
            Text("Picker")
        }
      

        
    }
}

struct Dropdown_Previews: PreviewProvider {
    static var previews: some View {
        Dropdown(character: CharacterModel)
    }
}
