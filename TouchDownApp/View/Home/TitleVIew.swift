//
//  TitleVIew.swift
//  TouchDownApp
//
//  Created by Michael Camp on 4/28/21.
//

import SwiftUI

struct TitleVIew: View {
    
    //MARK: - Properties
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
            
        } // HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom,10)
    }
}

struct TitleVIew_Previews: PreviewProvider {
    static var previews: some View {
        TitleVIew(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
