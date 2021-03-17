//
//  ContributorsView.swift
//  Swiftomatic
//
//  Created by Audrey Roscop on 16/03/2021.
//

import SwiftUI

struct ContributorsView: View {
    
    private var contributorsList: [Contributors] = [
        Contributors(name: "Chris Lattner", image: "ChrisLattner", caption: "nondot.org/sabre/", biography: "Software Engineer, né en 1978, connu comme le principal auteur du compilateur Clang et de sa plate-forme de bas niveau LLVM. A commencé à travailler sur Swift en juillet 2010.", latestContribution1: "SE-0302 Sendable and @Sendable closures", latestContribution2: "SE-0216 Introduce user-defined dynamically callable types"),
        Contributors(name: "Erica Sadun", image: "EricaSadun", caption: "ericasadun.com", biography: "Erica enjoys deep diving into technology and has written, co-written, and contributed to dozens of books about computing and digital media. She has blogged at TUAW, Ars Technica, O'Reilly, and Lifehacker, and has authored and co-authored a whole heap of Swift proposals.", latestContribution1: "SE-0214 Renaming the DictionaryLiteral type to KeyValuePairs", latestContribution2: "SE-0200 Enhancing String Literals Delimiters to Support Raw Text"),
        Contributors(name: "Doug Gregor", image: "DougGregor", caption: "github.com/DougGregor", biography: "Swift language designer and Swift/C++/ObjC compiler implementor, Author, Generic Programming aficionado. Swift Core Team Member", latestContribution1: "SE-0302 Sendable and @Sendable closures", latestContribution2: "SE-0297 Concurrency Interoperability with Objective-C"),
        Contributors(name: "Becca Gordon", image: "BeccaRoyalGordon", caption: "github.com/beccadax", biography: "Swift compiler engineer at Apple. Swift contributor.", latestContribution1: "SE-0274 Concise magic file names", latestContribution2: "SE-0285 Ease the transition to concise magic file strings"),
        Contributors(name: "John McCall", image: "JohnMcCall", caption: "github.com/rjmccall", biography: "Language design and implementation for the Swift language. Member of the Core Team with primary responsibility for the project and its language design. Implemented code generation.", latestContribution1: "SE-0296 Async/await", latestContribution2: "SE-0289 Result builders")
    ]
    
    var body: some View {
        NavigationView {
            List(contributorsList) { contributors in
                NavigationLink(
                    destination: ContributorsDetails(contributorsProfile: contributors)){
                    ContributorsRow(contributors: contributors)
                }
            }
            .navigationBarTitle("Contributeurs")
        }
    }
}

struct ContributorsView_Previews: PreviewProvider {
    static var previews: some View {
        ContributorsView()
    }
}
