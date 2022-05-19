//
//  ImagePicker.swift
//  DND-Character-Creator
//
//  Created by admin on 5/16/22.
//

import SwiftUI

struct ImagePicker: View {
    @State var images = ["dwarf1", "dwarf2", "elf1", "elf2", "human1", "human2", "tiefling1", "tiefling2", "halfling1", "halfling2", "half_orc1", "half_orc2", "half_elf1", "half_elf2", "gnome1", "gnome2"]
    @Binding var pickedImage: String
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        List {
            ForEach($images, id: \.self ) { $image in
                Button {
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
        ImagePicker(pickedImage: .constant(""))
    }
}
