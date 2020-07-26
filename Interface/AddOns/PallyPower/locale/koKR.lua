local L = AceLibrary("AceLocale-2.2"):new("PallyPower")

L:RegisterTranslations("koKR", function() return 
{
	AURAS = "오라",
	AURAS_DESC = "오라 모니터링 사용/사용 안함",
	AUTOASSIGN = "자동-지정",
	AUTOBTN = "자동 버튼 표시",
	AUTOBTN_DESC = "자동 버프 버튼 표시/숨기기",
	AUTOBUFF = "자동 버프",
	AUTOBUFF_DESC = "자동 버프 옵션",
	AUTOKEY1 = "자동 기본 축복 키",
	AUTOKEY1_DESC = "기본 축복을 자동 버프할 단축키",
	AUTOKEY2 = "자동 상급 축복 키",
	AUTOKEY2_DESC = "상급 축복을 자동 버프할 단축키",
	BAS = "축복 지정",
	BAS_DESC = "축복 지정창 열기",
	BRPT = "축복 보고",
	BRPT_DESC = "파티/공격대 채널에 축복 보고",
	BSC = "버프 크기",
	BSC_DESC = "버프 바 크기 설정",
	CSC = "설정창 크기",
	CSC_DESC = "설정창 크기 설정",
	DISABLED = "비활성화됨",
	DISP = "버프 버튼",
	DISPCL = "직업 버튼",
	DISPCL_DESC = "직업 버튼 방향 설정",
	DISPCOL = "세로 행(줄)",
	DISPCOL_DESC = "세로 행 정렬 갯수 설정",
	DISP_DESC = "버프 버튼 설정",
	DISPEDGES = "Display Button Edges", -- Requires localization
	DISPEDGES_DESC = "Display Edges for Player Buttons", -- Requires localization
	DISPGAP = "버튼 간격",
	DISPGAP_DESC = "버튼 간격 설정",
	DISPPL = "플레이어 버튼",
	DISPPL_DESC = "플레이어 버튼 방향 설정",
	DISPROWS = "가로 열(칸)",
	DISPROWS_DESC = "가로 열 정렬 갯수 설정",
	DRAGHANDLE = [=[버프 바 이동 : 마우스 좌클릭+드래그
잠금/해제 : 마우스 좌클릭
옵션창 : 마우스 우클릭]=],
	ENABLED = "활성화됨",
	FREEASSIGN = "자유 지정",
	FREEASSIGN_DESC = "승급되지 않은 다른 사람이 축복을 변경하는 것을 허용",
	GREATER = "상급 축복",
	GREATER_DESC = "상급 축복 활성/비활성",
	HIDECB = "직업 버튼 자동 숨기기",
	HIDECB_DESC = "직업 버튼 자동 숨기기",
	HIDEDH = "이동 버튼 숨기기",
	HIDEDH_DESC = "이동 버튼 표시/숨기기",
	HIDEPB = "플레이어 버튼 숨기기",
	HIDEPB_DESC = "플레이어 버튼 표시/숨기기",
	IGNOREEXTRA = "그룹 6-8 무시",
	IGNOREEXTRADESC = "6-8 그룹에 배치된 대기중인 사람은 무시",
	LAYOUT = "Layout", -- Requires localization
	LAYOUT_DESC = "Custom Layout", -- Requires localization
	PP_CLEAR = "초기화",
	PP_OPTIONS = "옵션",
	PP_RAS1 = "--- 성기사별 축복 보고서 ---",
	PP_RAS2 = "--- 축복 보고서 끝 ---",
	PP_REFRESH = "새로 고침",
	RESET = "프레임 초기화",
	RESET_DESC = "PallyPower 프레임을 중앙으로 모두 초기화",
	RFBUFF = "정의의 격노 / 문장",
	RFBUFF_DESC = "정의의 격노 모니터링 사용/사용 안함",
	RFUSE = "Righteous Fury", -- Requires localization
	RFUSE_DESC = "Righteous Fury on/off", -- Requires localization
	SBUFF = "스마트 버프",
	SBUFF_DESC = "확정된 직업에 버프 건너뜀",
	SEAL = "Seal", -- Requires localization
	SEAL_DESC = "Seal", -- Requires localization
	SHOWPARTY = "파티일때 표시",
	SHOWPARTY_DESC = "파티일때 버프바 표시/숨기기",
	SHOWSINGLE = "솔로일때 표시",
	SHOWSINGLE_DESC = "솔로일때 버프 바 표시/숨기기",
	SKIN = "무늬",
	SKIN_DESC = "버프 버튼에 사용자 배경을 적용합니다.",
	WAIT = "버프 대기",
	WAIT_DESC = "모든 사람이 사거리에 안에 있고 버프 직업이 온라인 상태가 될 때까지 대기",
}
 
end)