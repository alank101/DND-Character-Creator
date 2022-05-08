//
//  Dropdown.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//

import SwiftUI
//we can use these components to pass around for the whole app
struct Dropdown: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //dropdown menu//picker components
        Picker(selection: .constant(1)) {
            Text("1").tag(1)
            Text("2").tag(2)
            Text("2").tag(2)
        } label: {
            Text("Picker")
        }
      

        
    }
}

struct Dropdown_Previews: PreviewProvider {
    static var previews: some View {
        Dropdown()
    }
}
