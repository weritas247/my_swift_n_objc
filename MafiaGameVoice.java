package kr.team42.mafia42.common.game.mafia.voice

import kr.team42.mafia42.common.game.JobCode
import kr.team42.mafia42.common.game.MafiaGameVoiceData

enum class MafiaGameVoice(
	val code: Int,
	val jobCode: Int,
) {
	NONE(0, JobCode.USER_JOB_NONE),

	// 청부업자 보이스
	VOICE_HITMAN_SKILL_SUCCESS(35000, JobCode.USER_JOB_HITMAN),
	VOICE_HITMAN_GANGSTER_LV1_KILL(35001, JobCode.USER_JOB_HITMAN),
	VOICE_HITMAN_REPORTER_LV1_KILL(35002, JobCode.USER_JOB_HITMAN),
	VOICE_HITMAN_PRIEST_LV1_KILL(35003, JobCode.USER_JOB_HITMAN),
	VOICE_HITMAN_PROPHET_KILL(35004, JobCode.USER_JOB_HITMAN),
	VOICE_HITMAN_LOVER_KILL(35005, JobCode.USER_JOB_HITMAN),
	VOICE_HITMAN_MERCENARY_KILL(35006, JobCode.USER_JOB_HITMAN),
	VOICE_HITMAN_TERRORIST_KILL(35007, JobCode.USER_JOB_HITMAN),
	;

	companion object {
		private val codeMap = values().associateBy { it.code }

		@JvmStatic
		fun fromCode(code: Int) = codeMap[code]
	}

	fun getFileName(): String = this.name.toLowerCase()
	fun toData(): MafiaGameVoiceData = MafiaGameVoiceData(this)
}
