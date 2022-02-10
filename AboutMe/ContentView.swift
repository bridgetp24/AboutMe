//
//  ContentView.swift
//  AboutMe
//
//  Created by Bridget Peterkin on 2/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView(selection: .constant(1)) {
                AboutMe().tabItem {
                    Text("About Me")
                    Image(systemName: "person.circle")
                    
                }.tag(1)
                MyMusic()
                    .tabItem {
                        Text("My Music")
                        Image(systemName: "music.note.list")
                    }.tag(2)
            }
                
  
        }

    }
}
struct AboutMe: View {
    var body: some View {
        VStack {
            Image("BridgitSenior-58")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 20)
                
            Text("Bridget Peterkin")
                .font(.title)
                .multilineTextAlignment(.center)
            Text("Major: Computer Science\nHometown: Omaha, NE")
                .font(.body)
                .multilineTextAlignment(.center)
            Text("\nMusical Instruments:\nGuitar, flute, piano, vocals, bass clarinet, violin")
                .font(.body)
                .multilineTextAlignment(.center)
        }

    }
}
struct MyMusic: View {
    var body: some View {
        
        VStack {
            Text("My Music")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)

            HStack {
                Text("Song:")
                Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    Text("Blackbird").tag(1)
                    Text("Stones&Boulders (Instrumental)").tag(2)
                    Text("Song 3").tag(3)
                }
            }
            
            Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
            HStack {
                Image(systemName: "backward.frame.fill")
                Image(systemName: "play.fill")
                Image(systemName: "forward.frame.fill")
            }
            
            
  
        }

    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
