//
//  StudentInfo.swift
//  Student Register
//
//  Created by Admin on 01.02.22.
//

import UIKit

class StudentInfo: UIViewController {

    @IBOutlet weak var fullNameTextLabel: UILabel!
    @IBOutlet weak var emailTextLabel: UILabel!
    @IBOutlet weak var phoneNumberTextLabel: UILabel!
    @IBOutlet var genderTextLabel: UIView!
    
    @IBOutlet weak var studentIDTextLabel: UILabel!
    var student = Student(fullName: "", email: "", phoneNumber: "")
    
    
    
    
    
//    var FullNameText: String? {
//        didSet {
//            print("set to: \(self.FullNameText ?? "")")
//        }
//    }
//    var EmailText: String? {
//        didSet {
//            print("set to: \(self.EmailText ?? "")")
//        }
//    }
//    var PhoneNumberText: String? {
//        didSet {
//            print("set to: \(self.PhoneNumberText ?? "")")
//        }
//    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.phoneNumberTextLabel.text = student.phoneNumber
        self.emailTextLabel.text = student.email
        self.fullNameTextLabel.text = student.fullName
        view.backgroundColor = .darkGray
        
        let randomNum = Int.random(in: 10000...100000)
        studentIDTextLabel.text = String(randomNum)
        
        print(student)
        
    }
   
    

    

}
