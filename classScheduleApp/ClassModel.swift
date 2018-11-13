//
//  Class.swift
//  classScheduleApp
//
//  Created by 篠原立樹 on 2018/11/13.
//  Copyright © 2018 Ostrich. All rights reserved.
//

import Foundation

struct ClassModel {
    let day: String
    let period: Int
    let className: String
    let teacherName: String
    let roomName: String
}

let arr: [ClassModel] = [ClassModel(day: "Mon", period: 2, className: "国語", teacherName: "下村", roomName: "201")]
