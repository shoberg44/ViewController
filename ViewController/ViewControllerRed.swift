//
//  ViewControllerRed.swift
//  ViewController
//
//  Created by STEVEN HOBERG on 9/30/22.
//

import UIKit

class ViewControllerRed: UIViewController {

    @IBOutlet weak var textOutRed: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidDisappear(_ animated: Bool) {
        performSegue(withIdentifier: unwindwhite, sender: nil)
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
