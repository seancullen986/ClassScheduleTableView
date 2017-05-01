//
//  ViewController.swift
//  tableviewExample
//
//  Created by Sean Cullen on 4/23/17.
//  Copyright © 2017 Sonoma State University Department of Computer Science. All rights reserved.
//

import UIKit

class ClassDetailsViewController: UIViewController {
    var classData: Class?
    var backgroundImageView: UIImageView?
    
    // Outlets going to storyboard
    @IBOutlet weak var departmentView: UIView!
    @IBOutlet weak var _className: UILabel!
    
    @IBOutlet weak var primaryInfoView: UIView!
    @IBOutlet weak var _description: UILabel!
    // @IBOutlet weak var _className: UILabel!
    @IBOutlet weak var _location: UILabel!
    @IBOutlet weak var _instructor: UILabel!
    @IBOutlet weak var _days: UILabel!
    @IBOutlet weak var _time: UILabel!
    
    @IBOutlet weak var secondaryInfoView: UIView!
    @IBOutlet weak var _component: UILabel!
    @IBOutlet weak var _units: UILabel!
    @IBOutlet weak var _combinedSection: UILabel!
    @IBOutlet weak var _designation: UILabel!
    @IBOutlet weak var _section: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let resultViewController = storyBoard.instantiateViewController(withIdentifier: "ClassScheduleTVC") as! ClassScheduleTableViewController
        
        self.present(resultViewController, animated:true, completion:nil)
         */
        title = classData?.department
//        backgroundImageView = UIImageView(frame: self.view.bounds)
//        backgroundImageView?.image = UIImage(named: "DetailsBackgroundImage")
//        self.view.addSubview(backgroundImageView!)
        
        roundViewCorners()
        displayClassData()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func passClassData(_class: Class){
        // if _class == nil{
            // print("CDVC:\tpassClassData:\tclassData = nil")
        // }
        // print("_class:")
        // _class.printClass()
        classData = _class
        // print("classData:")
        // classData?.printClass()
    }
    
    
    func displayClassData(){
        // _department.text = classData?.department
        _className.text = (classData?.subject)! + " " + (classData?.catalog)!
        
        _description.text = classData?.description
        
        _location.text = "Location: " + (classData?.facilityID)!
        _instructor.text = "Instructor: " + (classData?.firstName)! + " " + (classData?.lastName)!
        _days.text = getDays(standardMeetingPattern: (classData?.standardMeetingPattern)!)
        _time.text = (classData?.startTime)! + "-" + (classData?.endTime)!
        
        if classData?.component == "ACT"{
            _component.text = "Activity"
        }
        else if classData?.component == "LEC"{
            _component.text = "Lecture"
        }
        else{
            _component.text = "Discussion"
        }
        _units.text = "Units: " + "\((classData?.maxUnits)!)"
        if (classData?.combinedSection)!{
            _combinedSection.text = "Combined Section? Yes"
        }
        else{
            _combinedSection.text = "Combined Section? No"
        }
        _designation.text = "Designation: " + "\((classData?.designation)!)"
        _section.text = "Section " + "\((classData?.section)!)"
        
    }
    
    
    func roundViewCorners(){
        departmentView.layer.cornerRadius = 10
        departmentView.layer.borderColor = UIColorFromHex(rgbValue: 0x003268).cgColor // Dark blue
        departmentView.layer.borderWidth = 1
        
        primaryInfoView.layer.cornerRadius = 10
        primaryInfoView.layer.borderColor = UIColorFromHex(rgbValue: 0x003268).cgColor // Dark blue
        primaryInfoView.layer.borderWidth = 1
        
        secondaryInfoView.layer.cornerRadius = 10
        secondaryInfoView.layer.borderColor = UIColorFromHex(rgbValue: 0x003268).cgColor // Dark blue
        secondaryInfoView.layer.borderWidth = 1
    }
    
    
    func getDays(standardMeetingPattern: String) -> String{
        var meetingDays = [String]()
        var days = ""
        if (standardMeetingPattern.range(of: "M") != nil){
            meetingDays.append("Monday")
        }
        if (standardMeetingPattern.range(of: "T") != nil){
            meetingDays.append("Tuesday")
        }
        if (standardMeetingPattern.range(of: "W") != nil){
            meetingDays.append("Wednesday")
        }
        if (standardMeetingPattern.range(of: "R") != nil){
            meetingDays.append("Thursday")
        }
        if (standardMeetingPattern.range(of: "F") != nil){
            meetingDays.append("Friday")
        }
        for day in 0..<meetingDays.count{
            days += meetingDays[day]
            if day < meetingDays.count - 1{
                days += ", "
            }
        }
        return days // .substring(to: meetingDays.startIndex) //meetingDays.characters.count - 2)
    }

}

