//
//  schoolDetail.swift
//  ilakkmanoharan_NYCHighschools
//
//  Created by Ilakkuvaselvi Manoharan on 9/10/22.
//

import SwiftUI

struct SchoolDetailView: View {
    
    var school: SATScores
    
    let yellow1 = Color.init(Color.yellow1!)
    let blue1 = Color.init(Color.blue1!)
    
    var body: some View {
        ZStack {
            Color.init(Color.yellow1!).edgesIgnoringSafeArea(.all)
        VStack(spacing:5) {
        VStack {
            
            Text(school.school_name)
                    .font(.system(size: 16, weight: .medium))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                    .foregroundColor(Color.black)
                    .padding(.vertical)
            }.frame(width: UIScreen.main.bounds.width - 50)
                .background(self.blue1)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3),
                            radius: 3,
                            x: 3,
                            y: 3)
        VStack {
            Text("SAT Critical Reading Avg Score: \(school.sat_critical_reading_avg_score)")
                .font(.system(size: 16, weight: .medium))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .foregroundColor(Color.black)
                .padding(.vertical)
            }.frame(width: UIScreen.main.bounds.width - 50)
                .background(self.blue1)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 3,
                        x: 3,
                        y: 3)
        
        VStack {
            Text("SAT Math Avg Score: \(school.sat_math_avg_score)")
                .font(.system(size: 16, weight: .medium))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .foregroundColor(Color.black)
                .padding(.vertical)
            }.frame(width: UIScreen.main.bounds.width - 50)
                .background(self.blue1)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 3,
                        x: 3,
                        y: 3)
        VStack {
            Text("SAT Writing Avg Score: \(school.sat_writing_avg_score)")
                    .font(.system(size: 16, weight: .medium))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                    .foregroundColor(Color.black)
                    .padding(.vertical)
            }.frame(width: UIScreen.main.bounds.width - 50)
                    .background(self.blue1)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3),
                            radius: 3,
                            x: 3,
                            y: 3)
        }
        }
    }
         
}
