//
//  ClassView.swift
//  classScheduleApp
//
//  Created by 篠原立樹 on 2018/11/13.
//  Copyright © 2018 Ostrich. All rights reserved.
//

import UIKit

class ClassView: UIView {
    @IBOutlet private weak var classNameLabel: UILabel!
    @IBOutlet private weak var teacherNameLabel: UILabel!
    @IBOutlet private weak var roomNameLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI() {
        let nib = UINib(nibName: "ClassView", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = bounds
        addSubview(view)
    }
    
    func set(classModel: ClassModel) {
        classNameLabel.text = classModel.className
        teacherNameLabel.text = classModel.teacherName
        roomNameLabel.text = classModel.roomName
    }
}
