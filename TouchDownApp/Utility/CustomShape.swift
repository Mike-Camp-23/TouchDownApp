//
//  CustomShape.swift
//  TouchDownApp
//
//  Created by Michael Camp on 4/28/21.
//

import SwiftUI


    //MARK: - Properties
    
    struct CustomShape: Shape {
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
            
            return Path(path.cgPath)
        }
    }
    
    //MARK: - Body
    
  

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
