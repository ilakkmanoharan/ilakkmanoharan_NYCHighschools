//
//  SchoolList.swift
//  ilakkmanoharan_NYCHighschools
//
//  Created by Ilakkuvaselvi Manoharan on 9/10/22.
//

import SwiftUI

struct SchoolList: View {
   
    @State var school = [SATScores]()

    var body: some View {
        
        ZStack {
            Color.init(Color.yellow1!).edgesIgnoringSafeArea(.all)
        
        NavigationView {
            
              List(school) { school in
                
                
                NavigationLink {
                    SchoolDetailView(school: school)
                    
                } label: {
                    SchoolRow(school: school)
                }
                
            }
            
            .onAppear() {
                ModelData().getschoolDetail { (school) in
                    self.school = school
                }
                
            }.navigationTitle("NYCSchools")
        }//navigation
    }//zstack
    }
}


