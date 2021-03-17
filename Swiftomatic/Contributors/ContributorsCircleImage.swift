//
//  ContributorsCircleImage.swift
//  Swiftomatic
//
//  Created by Audrey Roscop on 16/03/2021.
//

import SwiftUI

struct ContributorsCircleImage: View {
    
    var circleImage: Contributors
    
    var body: some View {
        VStack {
            Image(circleImage.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 120, maxHeight: 120, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 4)
                .padding(.bottom)
                .padding(.top)
        }
    }
}


struct ContributorsCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        ContributorsCircleImage(circleImage: Contributors.init(name: "Doug Gregor", image: "DougGregor", caption: "github.com/DougGregor", biography: "Swift language designer and Swift/C++/ObjC compiler implementor, Author, Generic Programming aficionado", latestContribution1: "SE-0302 Sendable and @Sendable closures", latestContribution2: "SE-0297 Concurrency Interoperability with Objective-C"))
    }
}
