//
//  MafiaGameVoice.swift
//  Mafia42
//
//  Created by Matthew(Team42) on 2023/01/19.
//  Copyright © 2023 Team42. All rights reserved.
//

import UIKit

@objc
enum MafiaGameVoiceCode: Int {

    case NONE = 0

    // 청부업자 보이스
    case VOICE_HITMAN_SKILL_SUCCESS = 35000
    case VOICE_HITMAN_GANGSTER_LV1_KILL = 35001
    case VOICE_HITMAN_REPORTER_LV1_KILL = 35002
    case VOICE_HITMAN_PRIEST_LV1_KILL = 35003
    case VOICE_HITMAN_PROPHET_KILL = 35004
    case VOICE_HITMAN_LOVER_KILL = 35005
    case VOICE_HITMAN_MERCENARY_KILL = 35006
    case VOICE_HITMAN_TERRORIST_KILL = 35007

    func description() -> String {

        return String(describing: self)
    }
}

@objc
class MafiaGameVoice: NSObject {

    @objc var code:MafiaGameVoiceCode = .NONE
    @objc var jobCode:JobCode = .USER_JOB_NONE

    init(code: MafiaGameVoiceCode, jobCode: JobCode) {
        self.code = code
        self.jobCode = jobCode
    }

    override var description: String {
        return "\(self.code),  \(self.jobCode)"
    }
}

@objc
class MafiaGameVoiceEnum: NSObject {

    @objc static let array = [
        MafiaGameVoice(code: .NONE, jobCode: .USER_JOB_NONE),
        MafiaGameVoice(code: .VOICE_HITMAN_SKILL_SUCCESS, jobCode: .USER_JOB_HITMAN),
        MafiaGameVoice(code: .VOICE_HITMAN_GANGSTER_LV1_KILL, jobCode: .USER_JOB_HITMAN),
        MafiaGameVoice(code: .VOICE_HITMAN_REPORTER_LV1_KILL, jobCode: .USER_JOB_HITMAN),
        MafiaGameVoice(code: .VOICE_HITMAN_PRIEST_LV1_KILL, jobCode: .USER_JOB_HITMAN),
        MafiaGameVoice(code: .VOICE_HITMAN_PROPHET_KILL, jobCode: .USER_JOB_HITMAN),
        MafiaGameVoice(code: .VOICE_HITMAN_LOVER_KILL, jobCode: .USER_JOB_HITMAN),
        MafiaGameVoice(code: .VOICE_HITMAN_MERCENARY_KILL, jobCode: .USER_JOB_HITMAN),
        MafiaGameVoice(code: .VOICE_HITMAN_TERRORIST_KILL, jobCode: .USER_JOB_HITMAN)
    ]

    @objc static func getCode(code:MafiaGameVoiceCode) -> MafiaGameVoice {

        var match = MafiaGameVoice(code: MafiaGameVoiceCode.NONE, jobCode: .USER_JOB_NONE)

        array.forEach { mafiaGameVoice in
            if mafiaGameVoice.code == code {
                match = mafiaGameVoice
            }
        }

        return match

    }
}
