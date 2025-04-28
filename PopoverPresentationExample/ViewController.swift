//
//  ViewController.swift
//  PopoverPresentationExample
//
import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func popOverActionButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PopupControllerViewController") as! PopupControllerViewController
        vc.modalPresentationStyle = .popover
        
        if let popover = vc.popoverPresentationController {
               popover.permittedArrowDirections = .any
               popover.delegate = self
               
               if let sourceView = sender as? UIView {
                   popover.sourceView = sourceView
                   popover.sourceRect = sourceView.bounds
               }
           }
           
           present(vc, animated: true, completion: nil)
    }
    
}

