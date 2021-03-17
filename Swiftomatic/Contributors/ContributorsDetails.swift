//
//  ContributorsDetails.swift
//  Swiftomatic
//
//  Created by Audrey Roscop on 16/03/2021.
//

import SwiftUI

struct ContributorsDetails: View {
    
    var contributorsProfile: Contributors
    
    var body: some View {
            VStack {
                VStack {
                    ContributorsCircleImage(circleImage: contributorsProfile)
                    Text(contributorsProfile.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .padding()
                }
                VStack(alignment: .leading) {
                    Text("Bio")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text(contributorsProfile.biography)
                        .font(.body)
                        .padding(.top)
                }
                .padding()
                
                VStack(alignment: .leading) {
                    Text("Dernières contributions")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    List {
                        Text(contributorsProfile.latestContribution1)
                        Text(contributorsProfile.latestContribution2)
                    }
                    .listStyle(InsetListStyle())
                }
                .padding()
            }
    }
}


struct ContributorsDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContributorsDetails(contributorsProfile: Contributors.init(name: "Doug Gregor", image: "DougGregor", caption: "github.com/DougGregor", biography: "Swift language designer and Swift/C++/ObjC compiler implementor, Author, Generic Programming aficionado", latestContribution1: "SE-0302 Sendable and @Sendable closures", latestContribution2: "SE-0297 Concurrency Interoperability with Objective-C"))
    }
}
