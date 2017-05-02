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
    var building: String?
    var room: String?
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
        self.location()
    }
    
    
    func location(){
        
        if ((facilityID?.range(of: "IH")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 2)
            building = "International Hall"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "STEV")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 4)
            building = "Stevenson"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "NICH")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 4)
            building = "Nicholas"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "SALZ")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 4)
            building = "International Hall"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "DARW")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 4)
            building = "Darwin"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "GMC")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 3)
            building = "Green Music Center"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "GMC SCHRDH")) != nil){
            // let index = facility?.index((facility?.startIndex)!, offsetBy: 2)
            building = "GMC Schroeder Hall"
            room = ""
        }
        else if ((facilityID?.range(of: "GMC WEILL")) != nil){
            // let index = facility?.index((facility?.startIndex)!, offsetBy: 2)
            building = "GMC: Weill Hall"
            room = ""
        }
        else if ((facilityID?.range(of: "IVES")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 4)
            building = "Ives Hall"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "CARS")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 4)
            building = "Carson Hall"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "SHLZ")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 4)
            building = "Schulz"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "CHALK HILL")) != nil){
            // let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 9)
            building = "Chalk Hill"
            room = "" // (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "PHED")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 4)
            building = "Physical Education"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "FLDH")) != nil){
            let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 4)
            building = "Field House"
            room = (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "COURTS")) != nil){
            // let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 6)
            building = "Tennis Courts"
            room = "" // (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "UKIAH")) != nil){
            // let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 5)
            building = "Ukiah"
            room = "" // (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "OFF-SITE")) != nil){
            // let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 8)
            building = "Off-Site"
            room = "" // (facilityID?.substring(from: index!))!
        }
        else if ((facilityID?.range(of: "ONLINE")) != nil){
            // let index = facilityID?.index((facilityID?.startIndex)!, offsetBy: 2)
            building = "Online"
            room = ""// (facilityID?.substring(from: index!))!
        }
        else{
            building = "TBD"
            room = ""
        }
        
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















