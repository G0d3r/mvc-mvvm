//
//  mvc_to_MVVM_demoTests.swift
//  mvc_to_MVVM_demoTests
//
//  Created by Ernest Godlewski on 15/03/2020.
//  Copyright © 2020 Ernest Godlewski. All rights reserved.
//

import XCTest
@testable import mvc_to_MVVM_demo

class mvc_to_MVVM_demoTests: XCTestCase
{
    
    override func setUp()
    {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown()
    {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCourseViewModel()
    {
        let course = Course(id: 0, name: "My Course Name", number_of_lessons: 10)
        let courseViewModel = CourseViewModel(course: course)
        
        XCTAssertEqual(course.name, courseViewModel.name)
        XCTAssertEqual("Lessons: \(course.number_of_lessons)", courseViewModel.detailTextString)
        
        XCTAssertEqual(.none, courseViewModel.accessoryType)
    }
    
    func testCourseViewModelLessonsOverThreshold()
    {
        let course = Course(id: 0, name: "My Course Name", number_of_lessons: 100)
        let courseViewModel = CourseViewModel(course: course)

        XCTAssertEqual("Lessons 30+ Check it out", courseViewModel.detailTextString)
        XCTAssertEqual(.detailDisclosureButton, courseViewModel.accessoryType)
    }
    
}
