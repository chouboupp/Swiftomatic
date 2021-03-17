//
//  ContributorsView.swift
//  Swiftomatic
//
//  Created by Audrey Roscop on 16/03/2021.
//

import SwiftUI

struct ContributorsView: View {
    
    private var contributorsList: [Contributors] = [
        Contributors(name: "Chris Lattner", image: "ChrisLattner", caption: "nondot.org/sabre/", biography: "Software Engineer, né en 1978, Chris est connu comme le principal auteur du compilateur Clang et de sa plate-forme de bas niveau LLVM. Il a commencé à travailler sur Swift en juillet 2010.", latestContribution1: "SE-0302 Sendable and @Sendable closures", latestContribution2: "SE-0216 Introduce user-defined dynamically callable types"),
        Contributors(name: "Erica Sadun", image: "EricaSadun", caption: "ericasadun.com", biography: "Erica a écrit, co-écrit et contribué à des dizaines de livres. Elle a rédigé et co-écrit un tas de propositions swift.", latestContribution1: "SE-0214 Renaming the DictionaryLiteral type to KeyValuePairs", latestContribution2: "SE-0200 Enhancing String Literals Delimiters to Support Raw Text"),
        Contributors(name: "Doug Gregor", image: "DougGregor", caption: "github.com/DougGregor", biography: "Doug est un Swift language designer et un Swift/C++/ObjC compiler implementor. Auteur, il fait également partie de la Core Team de Swift.", latestContribution1: "SE-0302 Sendable and @Sendable closures", latestContribution2: "SE-0297 Concurrency Interoperability with Objective-C"),
        Contributors(name: "Becca Gordon", image: "BeccaRoyalGordon", caption: "github.com/beccadax", biography: "Becca est Swift Compiler Engineer chez Apple mais également une contributrice régulière pour le développement du langage Swift.", latestContribution1: "SE-0274 Concise magic file names", latestContribution2: "SE-0285 Ease the transition to concise magic file strings"),
        Contributors(name: "John McCall", image: "JohnMcCall", caption: "github.com/rjmccall", biography: "John est Software Engineer chez Apple depuis 2008. Il est chargé du language design  et de l'implémentation pour le langage Swift. Il est membre de la Core Team de Swift.", latestContribution1: "SE-0296 Async/await", latestContribution2: "SE-0289 Result builders")
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
