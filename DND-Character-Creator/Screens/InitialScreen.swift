//
//  InitialScreen.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//

import SwiftUI

struct InitialScreen: View {
    var body: some View {
        VStack{
            Image("101")
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .padding()
            HStack {
                Image("d20")
                    .resizable()
                    .scaledToFit()
                    .frame(width:75)
                Image("d20")
                    .resizable()
                    .scaledToFit()
                    .frame(width:75)
                Image("d20")
                    .resizable()
                    .scaledToFit()
                    .frame(width:75)
            }.padding()
            Text("Dungeons and Dragons Character Creator")
                .font(.headline)
                .fontWeight(.bold)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 5.0))
            
            //font should look similar to the ui screen on figma mockup
            
            // need dice
            
            
            //            Button() for going to next screen it should probably say enter //should navigate to Edit screen
        }
        
    }
}

struct InitialScreen_Previews: PreviewProvider {
    static var previews: some View {
        InitialScreen()
    }
}
