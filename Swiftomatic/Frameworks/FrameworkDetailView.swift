//
//  FrameworkDetailView.swift
//  Swiftomatic
//
//  Created by jacky on 17/03/2021.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    var body: some View {
        VStack {
            
            
            Image(framework.imageFramework)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .clipped()
                .cornerRadius(20)
                .shadow(radius: 3)
            Text(framework.frameworkName)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.medium)
            Section {
                VStack{
                    Text(framework.descriptionFramework)
                        .padding()
                
                    Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                        Text("Pas lu").tag(1)
                        Text("En cours").tag(2)
                        Text("Terminé")
                            .tag(2)
                            
                    }

                    
                }
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: frameworks[0])
    }
}
