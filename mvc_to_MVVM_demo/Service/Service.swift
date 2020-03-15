//
//  Service.swift
//  mvc_to_MVVM_demo
//
//  Created by Ernest Godlewski on 14/03/2020.
//  Copyright © 2020 Ernest Godlewski. All rights reserved.
//

import Foundation

class Service: NSObject
{
    static let shared = Service()
    
    // TODO: fill in arguments in fetchCourses()
    func fetchCourses(completion: @escaping([Course]?, Error?) -> ())
    {
        let urlString = "https://api.letsbuildthatapp.com/jsondecodable/courses"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url)
        { (data, resp, err) in
            if let err = err
            {
                completion(nil, err)
                print("Failed to fetch courses", err)
            }
            
            // check reponse
            
            guard let data = data else { return }
            do
            {
                let courses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.async
                    {
                        completion(courses, nil)
                }
            } catch let jsonErr
            {
                print("Failed to decode:", jsonErr)
            }
        }.resume()
    }
}
