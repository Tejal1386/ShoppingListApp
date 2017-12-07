/*
 FileName = ShoppingListApp
 Aouther's Name-1 = Tejal Patel
 Student_ID = 300972812
 Aouther's Name-2 = Amandeep sekhon
 Student_ID = 300976886
 Aouther's Name-3 = Mankiran Kaur
 Student_ID = 300990016
 Date = 06/12/2017
 */
import UIKit

// UIviewcontroller class inherits UIPickerViewDelegate,UIPickerViewDataSource
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    ///////////////////outlets///////////////////////
    @IBOutlet weak var textname: UITextField!
   
    
    @IBOutlet weak var textItem1: UITextField!
    @IBOutlet weak var textItem2: UITextField!
    @IBOutlet weak var textItem3: UITextField!
    @IBOutlet weak var textItem4: UITextField!
    @IBOutlet weak var textItem5: UITextField!
    
    @IBOutlet weak var Pic_item1: UIPickerView!
    @IBOutlet weak var Pic_item2: UIPickerView!
    @IBOutlet weak var Pic_item3: UIPickerView!
    @IBOutlet weak var Pic_item4: UIPickerView!
    @IBOutlet weak var Pic_item5: UIPickerView!
    private let characterNames = ["0",
        "1", "2", "3", "4", "5",
        "6", "7","8","9","10"]
    
    
    //////////////////////////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    
    /// Reset Button : Reset all control values////
    @IBAction func reset(_ sender: UIButton) {
        
        textname.text = ""
       
        textItem1.text = ""
        textItem2.text = ""
        textItem3.text = ""
        textItem4.text = ""
        textItem5.text = ""
        self.Pic_item1.selectRow(0, inComponent: 0, animated: true)
        self.Pic_item2.selectRow(0, inComponent: 0, animated: true)
        self.Pic_item3.selectRow(0, inComponent: 0, animated: true)
        self.Pic_item4.selectRow(0, inComponent: 0, animated: true)
        self.Pic_item5.selectRow(0, inComponent: 0, animated: true)
        
    }
    
    // pickerview datasource method to show number of components in pickerview
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // pickerview datasource method that count number of components in pickerview
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return characterNames.count
    }
    
    // Picker Delegate Methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component:
        Int) -> String? {
        return characterNames[row]
    }
    
}

