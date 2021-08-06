//
//  FeaturedTabView.swift
//  TouchDownApp
//
//  Created by Michael Camp on 4/26/21.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } // Tab
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .accessibilityElement(children: .contain)
        .accessibilityAddTraits(.isHeader)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
