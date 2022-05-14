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
    
    var rolledStrength = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    var rolledDexterity = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    var rolledConstitution = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    var rolledIntelligence = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    var rolledWisdom = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    var rolledCharisma = Int.random(in: 1...6) + Int.random(in: 1...6) + Int.random(in: 1...6)
    
    @Binding var character: CharacterModel
//    @Binding var attribute: Attribute
    var body: some View {
        VStack{
            Text("Character Creator")
            Spacer()
    //        Text("Character Creator")
            //need same font as initial screej
            
            //top part
            HStack {
                VStack{
                    // need two drop downs
                    //stacked on top of each other
    //                Dropdown(character: Binding<CharacterModel>)
//                    Text("\(character.name)")
                    ClassDropdown(character:  .constant(CharacterModel(name: "", charClass: .barbarian, charRace: .elf, strength: 0, dexterity: 0 , constitution: 0, intelligence: 0, wisdom: 0, charisma: 0, image:Image(systemName: "pencil.circle.fill"))))
    //                Dropdown(character: Binding<CharacterModel>)
//                    Text("\(character.name)")
                    RaceDropdown(character:   .constant(CharacterModel(name: "", charClass: .barbarian, charRace: .elf, strength: 0, dexterity: 0 , constitution: 0, intelligence: 0, wisdom: 0, charisma: 0, image:Image(systemName: "pencil.circle.fill") )))
                    
                    
                }
                //need image placement drop
                Image( "101")
                    .resizable()
                    .aspectRatio (contentMode: .fill)
                    .clipped()
                    .frame(height: 140)
            }
            .padding()
            Spacer()
            //center section filled with properties of character
            
            //only six options so we probably  only need to create just two hstacks
            // future reference, it we expand this, this could be a lazy grid
            
            VStack{
                HStack{
                    VStack{
            
                     Text("Strength")
                        Text("\(character.strength)" )
                            Button {
                                
                                character.strength = rolledStrength
                            } label: {
                                Text("Roll")
                            }
                    }
                    .padding()
                    VStack{
            
                     Text("Dexterity")
                        Text("\(character.dexterity)" )
                            Button {
                                
                                character.strength = rolledDexterity
                            } label: {
                                Text("Roll")
                            }
                    }
                    .padding()
                    
                   
                    
                    
                }
                
                
                //second row
                HStack{
                    VStack{
            
                        Text("Constitution").scaledToFit()
                        Text("\(character.constitution)" )
                            Button {
                                
                                character.strength = rolledConstitution
                            } label: {
                                Text("Roll")
                            }
                    }.padding()
                    
                    VStack{
            
                        Text("Wisdom").scaledToFit()
                        Text("\(character.wisdom)" )
                            Button {
                                
                                character.strength = rolledWisdom
                            } label: {
                                Text("Roll")
                            }
                    }.padding()
                }
                
                HStack{
                    VStack{
            
                        Text("Intelligence").scaledToFit()
                        Text("\(character.intelligence)" )
                            Button {
                                
                                character.strength = rolledIntelligence
                            } label: {
                                Text("Roll")
                            }
                    }.padding()
                    VStack{
            
                        Text("Charisma").scaledToFit()
                        Text("\(character.charisma)" )
                            Button {
                                
                                character.strength = rolledCharisma
                            } label: {
                                Text("Roll")
                            }
                    }.padding()
                    
                    
                }
                
                
               
              
            }
            Spacer()
        }
        
        
        
        //NO BOTTOM PART THOUGHT I THINK ONE IS NEEDED
        
        
        
        
    }
}

struct EditScreen_Previews: PreviewProvider {
    static var previews: some View {
        EditScreen(character: .constant(CharacterModel(name: "gabriel", charClass: .barbarian, charRace: .elf, strength: rolledStrength, dexterity: 0 , constitution: 0, intelligence: 0, wisdom: 0, charisma: 0, image:Image(systemName: "pencil.circle.fill") )))
    }
}
