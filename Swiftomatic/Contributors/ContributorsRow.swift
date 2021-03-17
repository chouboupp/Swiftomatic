//
//  ContributorsRow.swift
//  Swiftomatic
//
//  Created by Audrey Roscop on 16/03/2021.
//

import SwiftUI

struct ContributorsRow: View {
    
    var contributors: Contributors
    
    var body: some View {
        HStack {
        ContributorsCircleImage(circleImage: contributors)
            VStack(alignment: .leading) {
                Text(contributors.name)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text(contributors.caption)
                    .font(.subheadline)
            }
            .padding()
        }
    }
}


struct ContributorsRow_Previews: PreviewProvider {
    static var previews: some View {
        ContributorsRow(contributors: Contributors.init(name: "Doug Gregor", image: "DougGregor", caption: "github.com/DougGregor", biography: "Swift language designer and Swift/C++/ObjC compiler implementor, Author, Generic Programming aficionado", latestContribution1: "SE-0302 Sendable and @Sendable closures", latestContribution2: "SE-0297 Concurrency Interoperability with Objective-C"))
    }
}
