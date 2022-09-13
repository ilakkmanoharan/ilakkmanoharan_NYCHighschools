//
//  SchoolRow.swift
//  ilakkmanoharan_NYCHighschools
//
//  Created by Ilakkuvaselvi Manoharan on 9/10/22.
//

import SwiftUI

struct SchoolRow: View {
    
    var school: SATScores
   
    var body: some View {
        
        Text(school.school_name)
            .font(.headline)
            .foregroundColor(Color.black)
            .multilineTextAlignment(.center)
            .padding()
       
    }
}

