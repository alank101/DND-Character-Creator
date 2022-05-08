//
//  EditScreen.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//

import SwiftUI

struct EditScreen: View {
    var body: some View {
        Text("Character Creator")
        //need same font as initial screej
        
        //top part
        HStack {
            VStack{
                // need two drop downs
                //stacked on top of each other
            }
            //need image placement drop
        }
        
        //center section filled with properties of character
        
        //only six options so we probably  only need to create just two hstacks
        // future reference, it we expand this, this could be a lazy grid
        
        VStack{
            HStack{
                //3 character traits
            }
            HStack{
                //3 character traits
            }
        }
        
        
        //NO BOTTOM PART THOUGHT I THINK ONE IS NEEDED
        
        
        
        
    }
}

struct EditScreen_Previews: PreviewProvider {
    static var previews: some View {
        EditScreen()
    }
}
