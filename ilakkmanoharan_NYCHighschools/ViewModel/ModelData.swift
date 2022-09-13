//
//  ModelData.swift
//  ilakkmanoharan_NYCHighschools
//
//  Created by Ilakkuvaselvi Manoharan on 9/10/22.
//

import Foundation


class ModelData {
    
    
    func getschoolDetail(completion:@escaping ([SATScores]) -> ()) {
    guard let scores_url = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json?$$app_token=dJWMg4RWKd9m5K42E1yRZWSyo") else { return }
    
    URLSession.shared.dataTask(with: scores_url) { (data, _, _) in
        let scoreData = try! JSONDecoder().decode([SATScores].self, from: data!)
        print(scoreData)
        
        DispatchQueue.main.async {
            completion(scoreData)
        }
    }
    .resume()
}
    /*
    func getschoolMasterData(completion:@escaping ([SchoolMain]) -> ()) {
            guard let directory_url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json?$$app_token=dJWMg4RWKd9m5K42E1yRZWSyo") else { return }
            
            URLSession.shared.dataTask(with: directory_url) { (data, _, _) in
                let schoolData = try! JSONDecoder().decode([SchoolMain].self, from: data!)
                print(schoolData)
                
                DispatchQueue.main.async {
                    completion(schoolData)
                }
            }
            .resume()
        
        }
    */
    
    /*
    func getSATDataBySchool(dbn: String, completion:@escaping (SATScores) -> ()) {
    guard let scores_url = URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json?$$app_token=dJWMg4RWKd9m5K42E1yRZWSyo&dbn=$\(dbn)") else { return }
    
    URLSession.shared.dataTask(with: scores_url) { (data, _, _) in
        let scoreData = try! JSONDecoder().decode(SATScores.self, from: data!)
        print(scoreData)
        
        DispatchQueue.main.async {
            completion(scoreData)
        }
    }
    .resume()
}
  */
}
