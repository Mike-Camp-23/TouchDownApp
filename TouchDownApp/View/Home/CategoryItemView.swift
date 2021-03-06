//
//  CategoryItemView.swift
//  TouchDownApp
//
//  Created by Michael Camp on 4/28/21.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - Properties
    let category: Category
    
    //MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.black)
                    .accessibility(hidden: true)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(Color.black)
                
                Spacer()
            } // HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
            
            }) // Button
    }
}

//MARK: - Preview

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
