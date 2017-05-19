//
//  UploadViewController.swift
//  TaxPlanner
//
//  Created by Alok_iOS_Broc on 5/18/17.
//  Copyright © 2017 E-SaarTechy. All rights reserved.
//

import UIKit
import MessageUI

class UploadViewController: UIViewController,UIImagePickerControllerDelegate,
UINavigationControllerDelegate,MFMailComposeViewControllerDelegate {
    
    var dataValDict = NSMutableDictionary()
    @IBOutlet weak var imagePicked: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Valuess are.. \(dataValDict)")
        
        // Do any additional setup after loading the view.
    }

    @IBAction func uploadform(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    @IBAction func uploadSalaryslip(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }

    }
    
    func sendEmail() {
        let composer = MFMailComposeViewController()
        
        if MFMailComposeViewController.canSendMail() {
            composer.mailComposeDelegate = self
            composer.setToRecipients(["Email1", "Email2"])
            composer.setSubject("Test Mail")
            composer.setMessageBody("Text Body", isHTML: false)
            present(composer, animated: true, completion: nil)
        }    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func SendEmail(_ sender: Any) {
//        self.sendEmail()
        var picker = MFMailComposeViewController()
        picker.mailComposeDelegate = self
        // Set the subject of email
        picker.setSubject("Picture from my iPhone!")
        // Add email addresses
        // Notice three sections: "to" "cc" and "bcc"
        picker.setToRecipients(["emailaddress1@domainName.com", "emailaddress2@domainName.com"])
        picker.setCcRecipients(["emailaddress3@domainName.com"])
        picker.setBccRecipients(["emailaddress4@domainName.com"])
        // Fill out the email body text
        var emailBody: String = "I just took this picture, check it out."
        // This is not an HTML formatted email
        picker.setMessageBody(emailBody, isHTML: false)
        // Create NSData object as PNG image data from camera image
//        var data: Data? = UIImagePNGRepresentation(image)
        // Attach image data to the email
        // 'CameraImage.png' is the file name that will be attached to the email
//        picker.addAttachmentData(data!, mimeType: "image/png", fileName: "CameraImage")
    }
    
    
    
    
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        self.dismiss(animated: true, completion: nil)
   }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
