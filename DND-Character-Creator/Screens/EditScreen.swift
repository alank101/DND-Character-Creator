//
//  EditScreen.swift
//  DND-Character-Creator
//
//  Created by marvin evins on 5/7/22.
//
//marvins page
import SwiftUI
//this probably needs to be a swift ui form

struct EditScreen: View {
    
    
    //   need spot for character name
    
    //rolls
    var rolledStrength = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    var rolledDexterity = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    var rolledConstitution = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    var rolledIntelligence = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    var rolledWisdom = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    var rolledCharisma = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    @Binding var character: CharacterModel
    @State var images = ["dwarf1", "dwarf2", "elf1", "elf2", "human1", "human2", "tiefling1", "tiefling2", "halfling1", "halfling2", "half_orc1", "half_orc2", "half_elf1", "half_elf2", "gnome1", "gnome2"]
    //    @Binding var attribute: Attribute
    var body: some View {
        VStack {
            //        Text("Character Creator")
            //need same font as initial screej
            //top part
            HStack(alignment: .center) {
                Text("Character Name:")
                TextField("Character Name", text: $character.name)
                    .frame(width: 150)
            }.padding()
            HStack {
                VStack(alignment: .leading) {
                    // need two drop downs
                    //stacked on top of each other
                    //                Dropdown(character: Binding<CharacterModel>)
                    
                    Picker(selection: $character.charClass) {
                        Group {
                            Text("Barbarian").tag(dndClass.barbarian)
                            Text("Bard").tag(dndClass.bard)
                            Text("Cleric").tag(dndClass.cleric)
                            Text("Druid").tag(dndClass.druid)
                            Text("Fighter").tag(dndClass.fighter)
                            Text("Monk").tag(dndClass.monk)
                            Text("Paladin").tag(dndClass.paladin)
                            Text("Ranger").tag(dndClass.ranger)
                            Text("Rogue").tag(dndClass.rogue)
                            Text("Sorcerer").tag(dndClass.sorcerer)
                        }
                        Group {
                            Text("Warlock").tag(dndClass.warlock)
                            Text("Wizard").tag(dndClass.wizard)
                            Text("No Class").tag(dndClass.no_class)
                        }
                    } label: {
                        Text("Picker")
                    }.pickerStyle(MenuPickerStyle())
                        .padding()
                        .frame(height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.blue, lineWidth: 1.0).foregroundColor(.gray))
                    //                Dropdown(character: Binding<CharacterModel>)
                    //                    Text("\(character.name)")
                    Picker(selection: $character.charRace) {
                        Text("Dwarf").tag(Race.dwarf)
                        Text("Elf").tag(Race.elf)
                        Text("Gnome").tag(Race.gnome)
                        Text("Half Elf").tag(Race.half_elf)
                        Text("Half Orc").tag(Race.half_orc)
                        Text("Halfling").tag(Race.halfling)
                        Text("Human").tag(Race.human)
                        Text("Tiefling").tag(Race.tiefling)
                        Text("No Race").tag(Race.no_race)
                    } label: {
                        Text("Picker")
                    }.pickerStyle(MenuPickerStyle())
                        .padding()
                        .frame(height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.blue, lineWidth: 1.0).foregroundColor(.gray))
                }
                .padding()
                //need image placement drop
                //                Image( "101")
                //                    .resizable()
                //                    .aspectRatio (contentMode: .fill)
                //                    .clipped()
                //                    .frame(height: 140)
                NavigationLink {
                    ImagePicker(character: $character)
                } label: {
                    character.image
                        .resizable()
                        .scaledToFit()
                        .frame(width:150)
                }.padding()
//                VStack {
//                    Text("Character Picture")
//                    List {
//                        ForEach($images, id: \.self ) { $image in
//                            Button {
//                                character.image = Image(image)
//                            } label: {
//                                Image(image)
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 150)
//                            }
//                        }
//                    }
//                }.frame(width: 200)
//                .padding()
            }
            .padding()
            Spacer()
            //center section filled with properties of character
            //only six options so we probably  only need to create just two hstacks
            // future reference, it we expand this, this could be a lazy grid
            VStack {
                HStack {
                    VStack {
                        Text("Strength")
                        HStack {
                            Text("\(character.strength)")
                            Text("|")
                            if character.strength == 3 {
                                Text("-4")
                            } else if character.strength < 6 {
                                Text("-3")
                            } else if character.strength < 8 {
                               Text("-2")
                            } else if character.strength < 10 {
                                Text("-1")
                            } else if character.strength < 12 {
                                Text("0")
                            } else if character.strength < 14{
                                Text("+1")
                            } else if character.strength < 16 {
                                Text("+2")
                            } else if character.strength < 18 {
                                Text("+3")
                            } else if character.strength == 18 {
                                Text("+4")
                            }
                        }.padding()
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 1.0))
                        Button {
                            character.strength = rolledStrength
                        } label: {
                            Text("Roll")
                        }
                    }.padding()
                    VStack{
                        Text("Dexterity")
                        HStack {
                            Text("\(character.dexterity)")
                            Text("|")
                            if character.dexterity == 3 {
                                Text("-4")
                            } else if character.dexterity < 6 {
                                Text("-3")
                            } else if character.dexterity < 8 {
                               Text("-2")
                            } else if character.dexterity < 10 {
                                Text("-1")
                            } else if character.dexterity < 12 {
                                Text("0")
                            } else if character.dexterity < 14{
                                Text("+1")
                            } else if character.dexterity < 16 {
                                Text("+2")
                            } else if character.dexterity < 18 {
                                Text("+3")
                            } else if character.dexterity == 18 {
                                Text("+4")
                            }
                        }.padding()
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 1.0))
                        Button {
                            character.dexterity = rolledDexterity
                        } label: {
                            Text("Roll")
                        }
                    }.padding()
                }
                //second row
                HStack {
                    VStack {
                        Text("Constitution").scaledToFit()
                        HStack {
                            Text("\(character.constitution)")
                            Text("|")
                            if character.constitution == 3 {
                                Text("-4")
                            } else if character.constitution < 6 {
                                Text("-3")
                            } else if character.constitution < 8 {
                               Text("-2")
                            } else if character.constitution < 10 {
                                Text("-1")
                            } else if character.constitution < 12 {
                                Text("0")
                            } else if character.constitution < 14{
                                Text("+1")
                            } else if character.constitution < 16 {
                                Text("+2")
                            } else if character.constitution < 18 {
                                Text("+3")
                            } else if character.constitution == 18 {
                                Text("+4")
                            }
                        }.padding()
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 1.0))
                        Button {
                            character.constitution = rolledConstitution
                        } label: {
                            Text("Roll")
                        }
                    }.padding()
                    VStack {
                        Text("Wisdom").scaledToFit()
                        HStack {
                            Text("\(character.wisdom)")
                            Text("|")
                            if character.wisdom == 3 {
                                Text("-4")
                            } else if character.wisdom < 6 {
                                Text("-3")
                            } else if character.wisdom < 8 {
                               Text("-2")
                            } else if character.wisdom < 10 {
                                Text("-1")
                            } else if character.wisdom < 12 {
                                Text("0")
                            } else if character.wisdom < 14{
                                Text("+1")
                            } else if character.wisdom < 16 {
                                Text("+2")
                            } else if character.wisdom < 18 {
                                Text("+3")
                            } else if character.wisdom == 18 {
                                Text("+4")
                            }
                        }.padding()
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 1.0))
                        Button {
                            character.wisdom = rolledWisdom
                        } label: {
                            Text("Roll")
                        }
                    }.padding()
                }
                HStack {
                    VStack {
                        Text("Intelligence").scaledToFit()
                        HStack {
                            Text("\(character.intelligence)")
                            Text("|")
                            if character.intelligence == 3 {
                                Text("-4")
                            } else if character.intelligence < 6 {
                                Text("-3")
                            } else if character.intelligence < 8 {
                               Text("-2")
                            } else if character.intelligence < 10 {
                                Text("-1")
                            } else if character.intelligence < 12 {
                                Text("0")
                            } else if character.intelligence < 14{
                                Text("+1")
                            } else if character.intelligence < 16 {
                                Text("+2")
                            } else if character.intelligence < 18 {
                                Text("+3")
                            } else if character.intelligence == 18 {
                                Text("+4")
                            }
                        }.padding()
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 1.0))
                        Button {
                            character.intelligence = rolledIntelligence
                        } label: {
                            Text("Roll")
                        }
                    }.padding()
                    VStack {
                        Text("Charisma").scaledToFit()
                        HStack {
                            Text("\(character.charisma)")
                            Text("|")
                            if character.charisma == 3 {
                                Text("-4")
                            } else if character.charisma < 6 {
                                Text("-3")
                            } else if character.charisma < 8 {
                               Text("-2")
                            } else if character.charisma < 10 {
                                Text("-1")
                            } else if character.charisma < 12 {
                                Text("0")
                            } else if character.charisma < 14{
                                Text("+1")
                            } else if character.charisma < 16 {
                                Text("+2")
                            } else if character.charisma < 18 {
                                Text("+3")
                            } else if character.charisma == 18 {
                                Text("+4")
                            }
                        }.padding()
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 1.0))
                        Button {
                            character.charisma = rolledCharisma
                        } label: {
                            Text("Roll")
                        }
                    }.padding()
                }
            }
            Spacer()
        }.navigationBarTitle("Character Creator", displayMode: .inline)
        //NO BOTTOM PART THOUGHT I THINK ONE IS NEEDED
    }
}

struct EditScreen_Previews: PreviewProvider {
    static var previews: some View {
        EditScreen(character: .constant(CharacterModel(name: "gabriel", charClass: .barbarian, charRace: .elf, strength: rolledStrength, dexterity: 0 , constitution: 0, intelligence: 0, wisdom: 0, charisma: 0, image: Image(systemName: "pencil.circle.fill"))))
    }
}
