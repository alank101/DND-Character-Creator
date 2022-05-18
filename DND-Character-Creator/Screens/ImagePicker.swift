//
//  ImagePicker.swift
//  DND-Character-Creator
//
//  Created by admin on 5/16/22.
//

import SwiftUI

struct ImagePicker: View {
    @State var images = ["dwarf1", "dwarf2", "elf1", "elf2", "human1", "human2"]
    @Binding var pickedImage: String
    @Binding var character: CharacterModel
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            ForEach($images, id: \.self ) { $image in
                Button {
                    image = "\($character.image)"
                    pickedImage = image
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                }
            }
        }
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker(pickedImage: .constant(""), character: .constant(CharacterModel(name: "", charClass: .fighter, charRace: .human, strength: 10, dexterity: 10, constitution: 10, intelligence: 10, wisdom: 10, charisma: 10, image: Image("dwarf1"))))
    }
}
