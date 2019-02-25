   
   import UIKit
   
   class ChangeTextFieldvalueRealtime: UIViewController {
    
    //variable
    var twentyPercent:Float = 20/100
     
    
     override func viewDidLoad() {
        super.viewDidLoad()
      
      //Call the function into the textField where you are entering the value
      enterAmountTextField.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)
        
    }
   
   //MARK:Change TextField Values
    @objc func textFieldDidChange(textField: UITextField){
        
        let pointsCalculated = Float(enterAmountTextField.text!) ?? 0.0
        enterPointsTextField.text! = "\(pointsCalculated * twentyPercent)"

    }
    
    }
