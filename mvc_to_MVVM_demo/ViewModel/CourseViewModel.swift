//
//  CourseViewModel.swift
//  mvc_to_MVVM_demo
//
//  Created by Ernest Godlewski on 12/03/2020.
//  Copyright © 2020 Ernest Godlewski. All rights reserved.
//

import Foundation
import UIKit
/*
 This ViewModel is responsible for rendering out each of the views inside the cells
 */
struct CourseViewModel
{
    let name: String
    let detailTextString: String
    let accessoryType: UITableViewCell.AccessoryType
    
    //Depencendy Injection (DI)
    init(course: Course)
    {
        self.name = course.name
        
        if course.number_of_lessons > 35
        {
            detailTextString = "Lessons 30+ Check it out"
            accessoryType = .detailDisclosureButton
        } else
        {
            detailTextString = "Lessons: \(course.number_of_lessons)"
            accessoryType = .none
        }
    }
}
