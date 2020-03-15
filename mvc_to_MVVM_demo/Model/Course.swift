//
//  Model.swift
//  mvc_to_MVVM_demo
//
//  Created by Ernest Godlewski on 11/03/2020.
//  Copyright © 2020 Ernest Godlewski. All rights reserved.
//

import Foundation

struct Course: Decodable
{
    let id: Int
    let name: String
    let number_of_lessons: Int
}
