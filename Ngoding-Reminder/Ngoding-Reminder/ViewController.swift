//
//  ViewController.swift
//  NotificationsUI
//
//  Created by Zidane Putra Fadilah on 8/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func datePickerDidSelectNewDate(_ sender: UIDatePicker) {
      if let delegate = UIApplication.shared.delegate as? AppDelegate {
        delegate.scheduleNotification(at: sender.date)
      }
    }
}
