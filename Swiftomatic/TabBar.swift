//
//  TabBar.swift
//  Swiftomatic
//
//  Created by Audrey Roscop on 16/03/2021.
//

import SwiftUI

struct TabBar: View {
    @State private var selected: Int = 0
    
    var body: some View {
        TabView(selection: $selected) {
            FrameworksView().tabItem {
                Image(systemName: "square.3.stack.3d.top.fill")
                Text("Frameworks")
            }
            
            BooksView().tabItem {
                Image(systemName: "books.vertical")
                Text("Livres")
            }
            
            ConferencesView().tabItem {
                Image(systemName: "play.tv")
                Text("Conférences")
            }
            
            ContributorsView().tabItem {
                Image(systemName: "person.2")
                Text("Contributeurs")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
