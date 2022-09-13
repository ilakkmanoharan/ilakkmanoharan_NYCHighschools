//
//  SchoolDetailViewModel1.swift
//  ilakkmanoharan_NYCHighschools
//
//  Created by Ilakkuvaselvi Manoharan on 9/12/22.
//

import SwiftUI

class SchoolDetailViewModel: ObservableObject {
    
    var dbn: String
    
    var school_name: String
    
    @Published var satscores : [SATScores]?
    
    
    
    
    init(dbn: String, school_name: String) {
        self.dbn = dbn
        self.school_name = school_name
    }
    
    
    
    func getSATDataBySchool(dbn: String, completion:@escaping ([SATScores]) -> ()) {
    guard let scores_url = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json?$$app_token=dJWMg4RWKd9m5K42E1yRZWSyo&dbn=$\(dbn)") else { return }
    
    URLSession.shared.dataTask(with: scores_url) { (data, _, _) in
        let scoreData = try! JSONDecoder().decode([SATScores].self, from: data!)
        print(scoreData)
        
        DispatchQueue.main.async {
            completion(scoreData)
        }
    }
    .resume()
}
    
    func getSATBySchoolName(name: String, completion:@escaping ([SATScores]) -> ()) {
    guard let scores_url = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json?$$app_token=dJWMg4RWKd9m5K42E1yRZWSyo&dbn=$\(dbn)") else { return }
    
    URLSession.shared.dataTask(with: scores_url) { (data, _, _) in
        let scoreData = try! JSONDecoder().decode([SATScores].self, from: data!)
        print(scoreData)
        
        DispatchQueue.main.async {
            completion(scoreData)
        }
    }
    .resume()
}
    
    
    func FindSchoolByDbn() {
        
        
       getSATDataBySchool(dbn: dbn, completion: { (satscores) in
            self.satscores = satscores
        })
    
    }
    
    func FindSchoolByName() {
        
        
       getSATBySchoolName(name: school_name, completion: { (satscores) in
            self.satscores = satscores
        })
    
    }
    
    
}

