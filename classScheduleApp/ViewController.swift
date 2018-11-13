//
//  ViewController.swift
//  classScheduleApp
//
//  Created by 篠原立樹 on 2018/11/07.
//  Copyright © 2018 Ostrich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mondayClassesStackView: UIStackView!
    @IBOutlet weak var tuesdayClassesStackView: UIStackView!
    @IBOutlet weak var wednesdayClassesStackView: UIStackView!
    @IBOutlet weak var thursdayClassesStackView: UIStackView!
    @IBOutlet weak var fridayClassesStackView: UIStackView!
    
    var collectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for day in Day.all {
            for period in 1...5 {
                let classView = ClassView(frame: CGRect(x: 0, y: 0, width: 63, height: 126))
                classView.set(day: day, period: period)
                
                let tap = UITapGestureRecognizer(target: self, action: #selector(classViewTapped))
                classView.addGestureRecognizer(tap)
                
                switch day {
                case .mon:
                    mondayClassesStackView.addArrangedSubview(classView)
                case .tue:
                    tuesdayClassesStackView.addArrangedSubview(classView)
                case .wed:
                    wednesdayClassesStackView.addArrangedSubview(classView)
                case .thu:
                    thursdayClassesStackView.addArrangedSubview(classView)
                case .fri:
                    fridayClassesStackView.addArrangedSubview(classView)
                }
            }
        }
    
    }
    
    @objc private func classViewTapped(sender: UITapGestureRecognizer) {
        guard let senderView = sender.view as? ClassView else { return }
        print(senderView.day ?? .mon, senderView.period ?? -1)
    }
}

