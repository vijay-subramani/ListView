//
//  SwiftUIView.swift
//  TableView_SwiftUI
//
//  Created by Vijay on 15/08/21.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack
        {
            Image("Simon Ng")
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.orange, lineWidth: 2))
                .shadow(radius: 10)
            Text("Simon Ng")
                .font(.title)
            Text("Founder of Appcoda")
                .font(.subheadline)
            
            Divider()
                
            
            Text("Founder of AppCoda. Author of multiple iOS programming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger.")
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(50)
            
        }.padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
