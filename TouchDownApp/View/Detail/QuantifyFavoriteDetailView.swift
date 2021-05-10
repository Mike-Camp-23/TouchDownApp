//
//  QuantifyFavoriteDetailView.swift
//  TouchDownApp
//
//  Created by Michael Camp on 4/30/21.
//

import SwiftUI

struct QuantifyFavoriteDetailView: View {
    //MARK: - Properties
    
    @State private var counter: Int = 0
    
    //MARK: - Body
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                feedback.impactOccurred()
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button(action: {
                feedback.impactOccurred()
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        }) // HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
        
    }
}

struct QuantifyFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantifyFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
