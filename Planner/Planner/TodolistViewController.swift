//
//  TodolistViewController.swift
//  Planner
//
//  Created by apple on 2018/7/12.
//  Copyright © 2018年 ANNIE. All rights reserved.
//

import UIKit

class TodolistViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate{

    @IBOutlet weak var N1event: UITextField!
    @IBOutlet weak var N2event: UITextField!
    @IBOutlet weak var N3event: UITextField!
    @IBOutlet weak var notes: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notes.text = UserDefaults.standard.string(forKey: "noting") ?? "Notes"
        N1event.text = UserDefaults.standard.string(forKey: "firstEventText") ?? "NO.1"
        N2event.text = UserDefaults.standard.string(forKey: "secondEventText") ?? "NO.2"
        N3event.text = UserDefaults.standard.string(forKey: "thirdEventText") ?? "NO.3"
    }
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == N1event {
            UserDefaults.standard.set(N1event.text, forKey:"firstEventText")
            print(N1event.text ?? "NO.1")
        }
        else if textField == N2event {
            UserDefaults.standard.set(N2event.text, forKey:"secondEventText")
            print(N2event.text ?? "NO.2")
        }
        else if textField == N3event{
            UserDefaults.standard.set(N3event.text, forKey:"thirdEventText")
            print(N3event.text ?? "NO.3")
        }
        return true
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        UserDefaults.standard.set(notes.text, forKey:"noting")
        print(notes.text ?? "Notes")
        return true
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        notes.resignFirstResponder()
        N1event.resignFirstResponder()
        N2event.resignFirstResponder()
        N3event.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
