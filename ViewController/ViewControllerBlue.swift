//
//  ViewControllerBlue.swift
//  ViewController
//
//  Created by STEVEN HOBERG on 9/28/22.
//

import UIKit

class ViewControllerBlue: UIViewController {
    @IBOutlet weak var blueText: UITextField!
    var name : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func blueButton(_ sender: UIButton) {
        blueText.text! = name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
