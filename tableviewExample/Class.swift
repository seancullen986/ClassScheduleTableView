//
//  Class.swift
//  SSUMobile
//
//  Created by Sean Cullen on 4/20/17.
//  Copyright © 2017 Sonoma State University Department of Computer Science. All rights reserved.
//

import UIKit

class Class {
    var term: Int?
    var classNumber: Int?   // 1, 2, 3, ...
    var department: String? // American Multicultural Studies
    var subject: String?    // AMCS
    var catalog: String?    // 165A
    var section: Int?
    var description: String?    // course name
    var component: String?  // LEC/DIS
    var minUnits: Int?
    var maxUnits: Int?
    var classType: String?  // No idea
    var designation: String?    // GE area
    var startTime: String?
    var endTime: String?
    var standardMeetingPattern: String? // Days of the week
    var instructorID: Int?
    var firstName: String?
    var lastName: String?
    var combinedSection: Bool?
    //    var autoEnrol: Int?
    //    var autoEnr2: Int?
    var descr: String?      //
    var facilityID: String? // Building/classroom
    //    var csNumber: Int?
    //    var wtu: Int?
    //    var kFactor: Int?
    //    var sFactor: Int?
    //    var workoadFactor: String?
    
    init(_classNumber: Int, _department: String?, _subject: String, _catalog: String, _section: Int, _description: String, _component: String, _minUnits: Int, _maxUnits: Int, _startTime: String, _endTime: String, _standardMeetingPattern: String, _firstName: String, _lastName: String, _combinedSection: String, _descr: String, _facilityID: String?, _designation: String?) {
        self.classNumber = _classNumber
        self.department = _department
        self.subject = _subject
        self.catalog = _catalog
        self.section = _section
        self.description = _description
        self.component = _component
        self.minUnits = _minUnits
        self.maxUnits = _maxUnits
        self.startTime = _startTime
        self.endTime = _endTime
        self.standardMeetingPattern = _standardMeetingPattern
        self.firstName = _firstName
        self.lastName = _lastName
        self.combinedSection = {_combinedSection != ""}()
        self.descr = _descr
        self.facilityID = _facilityID
        self.designation = _designation
    }
    
    func printClass(){
        print("\((subject)!)\t\((catalog)!)\t\(startTime!)-\(endTime!)\t\(firstName!) \(lastName!)")
    }
    
    //    func getClassNumber() -> Int?{
    //        return classNumber
    //    }
    //    func getSubject() -> String?{
    //        return subject
    //    }
    //    func getCatalog() -> String?{
    //        return catalog
    //    }
    //    func getSection() -> Int?{
    //        return section
    //    }
    //    func getDescription() -> String?{
    //        return description
    //    }
    //    func getComponent() -> String?{
    //        return component
    //    }
    //    func getMinUnits() -> Int?{
    //        return minUnits
    //    }
    //    func getMaxUnits() -> Int?{
    //        return maxUnits
    //    }
    //    func getStartTime() -> String?{
    //        return startTime
    //    }
    //    func getEndTime() -> String?{
    //        return endTime
    //    }
    //    func getStandardMeetingPattern() -> String?{
    //        return standardMeetingPattern
    //    }
    //    func getFirstName() -> String?{
    //        return firstName
    //    }
    //    func getLastName() -> String?{
    //        return lastName
    //    }
}















