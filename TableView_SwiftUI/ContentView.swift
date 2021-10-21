//
//  ContentView.swift
//  TableView_SwiftUI
//
//  Created by Vijay on 15/08/21.
//

import SwiftUI

struct ContentView: View {
    var tutors: [Tutor] = []
    var body: some View {
        NavigationView{
            List(tutors) { tutor in
                TutorCell(tutor: tutor)
            }.navigationBarTitle(Text("List of Tutors"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(tutors: testData)
        }
    }
}
#endif

struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        return NavigationLink(
            destination:Text(tutor.name)){
            Image(tutor.imageName)
                .cornerRadius(40)
            VStack(alignment: .leading) {
                Text(tutor.name)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}
