//
//  ViewController.swift
//  Student Register
//
//  Created by Admin on 01.02.22.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
   
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var registerBTN: UIButton!
    @IBOutlet weak var genderPickerView: UIPickerView!
    var student = Student(fullName: "", email: "", phoneNumber: "")
    let gender = ["Male","Female","Other"]
    
//    enum Gender: Int  {
//        case male = 0
//        case female = 1
//        case other = 2
//        static var count: Int { return Gender.other.rawValue + 1 }
//
//        var description:String {
//            switch self {
//            case .male:
//                return "Male"
//            case .female:
//                return "Female"
//            case .other:
//                return "Other"
//
//            }
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genderPickerView.dataSource = self
        genderPickerView.delegate = self
        
        registerBTN.layer.cornerRadius = 20
        view.backgroundColor = .lightGray
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func registerButton(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "StudentInfo") as! StudentInfo
        setUpStudent()
        vc.student = student
//       vc.FullNameText = fullNameTextField.text ?? ""
//        vc.EmailText = emailTextField.text ?? ""
//        vc.PhoneNumberText = phoneNumberTextField.text ?? ""
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func setUpStudent() {
        student.fullName = fullNameTextField.text ?? ""
        student.email = emailTextField.text ?? ""
        student.phoneNumber = phoneNumberTextField.text ?? ""
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return gender[row]
        
    }
    
}

