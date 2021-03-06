//
//  NavigatinBarView.swift
//  TouchDownApp
//
//  Created by Michael Camp on 4/26/21.
//

import SwiftUI

struct NavigatinBarView: View {
    //MARK: - Properties
    @State private var isAnimated: Bool = false
    
    //MARK: - Body
    
    var body: some View {
        HStack {
            Button(action: {}, label: {
               
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.black)
                        .accessibility(label: Text("Search"))
                        
                    
                   
              
            }) // Button
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                    
                } // ZStack
            })
            .accessibilityElement(children: .ignore)
            .accessibility(label: Text("View Cart"))
        } // HStack
    }
}
//MARK: - Preview
struct NavigatinBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigatinBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
