//
//  EditScreen.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//

import SwiftUI

struct EditScreen: View {
    var body: some View {
        ZStack{
            Image("101")
                .resizable()
                .aspectRatio (contentMode: .fill)
                .clipped()
                .frame(height: 155)
            HStack{
                //Image 3* dice
                
            }
            Spacer()
            Text("Dungeons and Dragons Character Creator")
            //font should look similar to the ui screen on figma mockup
            
        }
    }
}

struct EditScreen_Previews: PreviewProvider {
    static var previews: some View {
        EditScreen()
    }
}
