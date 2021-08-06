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
            Group {
            Button(action: {
                feedback.impactOccurred()
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            .accessibilityAddTraits(.isButton)
            .accessibilitySortPriority(2)
            .accessibility(label: Text("Minus"))
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
                .accessibility(label: Text("Cart Containts \(counter) helmets"))
                .accessibilitySortPriority(0)
            Button(action: {
                feedback.impactOccurred()
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            .accessibilitySortPriority(1)
            .accessibilityAddTraits(.isButton)
            .accessibility(label: Text("Plus"))
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
            }
//            .accessibilityElement(children: .contain)
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
