//
//  ViewController.swift
//  iPadActionSheet-swift
//
//  Created by NETBIZ on 03/09/18.
//  Copyright © 2018 Netbiz.in. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showDeleteActionSheet(_ sender: AnyObject) {
        let alertController = UIAlertController(title: nil, message: "Alert message.", preferredStyle: .actionSheet)
        
        let defaultAction = UIAlertAction(title: "Default", style: .default, handler: { (alert: UIAlertAction!) -> Void in
            //  Do some action here.
            print("Default")
        })
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive, handler: { (alert: UIAlertAction!) -> Void in
            //  Do some destructive action here.
            print("Delete")
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { (alert: UIAlertAction!) -> Void in
            //  Do something here upon cancellation.
            print("Cancel")
        })
        
        alertController.addAction(defaultAction)
        alertController.addAction(deleteAction)
        alertController.addAction(cancelAction)
        
        if let popoverController = alertController.popoverPresentationController {
            popoverController.sourceView = self.view
            popoverController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
            popoverController.permittedArrowDirections = []

        }
        
        present(alertController, animated: true, completion: nil)
    }
}

