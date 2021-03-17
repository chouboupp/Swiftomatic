//
//  FrameworksView.swift
//  Swiftomatic
//
//  Created by Audrey Roscop on 16/03/2021.
//

import SwiftUI

struct FrameworksView: View {
    var body: some View {
        
        NavigationView{
            List(frameworks){ framework in
                NavigationLink(destination: FrameworkDetailView(framework: framework)) {
                FrameworkRow(framework: framework)
                }
            }
            .navigationTitle("Frameworks ")
        }
       
    }
}

struct FrameworksView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksView()
            .padding(.top, 60)
    }
}

struct FrameworkRow: View {
    
    let framework : Framework
    var body: some View {
        HStack {
            Image(framework.imageFramework)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 70, height: 70)
                .clipped()
                .cornerRadius(12)
            VStack(alignment:.leading){
                Text(framework.frameworkName)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(framework.resumeFramework)
                    .font(.caption)
                    .foregroundColor(Color(hue: 0.609, saturation: 0.649, brightness: 0.13, opacity: 0.835))
                   
                Text(framework.readingStage)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.top)
                   
                
            }
        }
    }
}
