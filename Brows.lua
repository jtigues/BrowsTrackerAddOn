local function Brows()
	local self = {
		name = Constants.Words.POKEMON .. " Stadium Brows",
    	author = "ninjafriend",
		description = "Puts animated eyebrows on all the " .. Constants.Words.POKEMON .. " on the main Tracker Screen when using the Stadium icon set.",
		version = "1.2",

		inBattleCountdown = false,
		isEnabled = true,
		browsUp = false,
		allowTurbo = false,
		frameCounter = 0,
		defaultFrames = 8,
		imagePath = "",
		browsOptions={
			[1]={direction=0, brows={{x=1,y=1,file="Brows25Left"},{x=3,y=2,file="Brows25Right"},}},
			[2]={direction=0, brows={{x=-1,y=4,file="Brows25Right"},}},
			[3]={direction=0, brows={{x=3,y=9,file="Brows20Left"},{x=8,y=9,file="Brows20Right"},}},
			[4]={direction=0, brows={{x=5,y=3,file="Brows20Left"},{x=9,y=3,file="Brows20Right"},}},
			[5]={direction=0, brows={{x=1,y=6,file="Brows25Right"},}},
			[6]={direction=0, brows={{x=-1,y=-4,file="Brows25Right"},}},
			[7]={direction=0, brows={{x=2,y=4,file="Brows15Left"},{x=-1,y=1,file="Brows25Right"},}},
			[8]={direction=0, brows={{x=-3,y=7,file="Brows25LeftTall"},{x=2,y=7,file="Brows25RightTall"},}},
			[9]={direction=0, brows={{x=-3,y=-2,file="Brows25Right"},}},
			[10]={direction=0, brows={{x=3,y=-4,file="Brows30Right"},}},
			[11]={direction=0, brows={{x=10,y=0,file="Brows25Left"},}},
			[12]={direction=0, brows={{x=-2,y=2,file="Brows30LeftFlat"},{x=-3,y=-2,file="Brows30Right"},}},
			[13]={direction=1, brows={{x=7,y=2,file="Brows15Left"},{x=16,y=7,file="Brows15Left"},}},
			[14]={direction=0, brows={{x=1,y=6,file="Brows15Left"},{x=-3,y=3,file="Brows25Right"},}},
			[15]={direction=0, brows={{x=3,y=5,file="Brows15Left"},{x=-6,y=-1,file="Brows30Right"},}},
			[16]={direction=0, brows={{x=-3,y=5,file="Brows25Right"},}},
			[17]={direction=0, brows={{x=-3,y=7,file="Brows25RightTall"},}},
			[18]={direction=0, brows={{x=-5,y=3,file="Brows25Right"},}},
			[19]={direction=0, brows={{x=-3,y=3,file="Brows25Right"},}},
			[20]={direction=0, brows={{x=-3,y=0,file="Brows25Right"},}},
			[21]={direction=0, brows={{x=-2,y=0,file="Brows25Right"},}},
			[22]={direction=0, brows={{x=0,y=3,file="Brows25Right"},}},
			[23]={direction=0, brows={{x=1,y=-2,file="Brows25Right"},}},
			[24]={direction=0, brows={{x=-1,y=4,file="Brows25RightTall"},}},
			[25]={direction=0, brows={{x=-1,y=3,file="Brows25Left"},{x=0,y=2,file="Brows25Right"},}},
			[26]={direction=0, brows={{x=3,y=0,file="Brows25"},}},
			[27]={direction=0, brows={{x=3,y=8,file="Brows15Left"},{x=4,y=4,file="Brows25Right"},}},
			[28]={direction=0, brows={{x=-2,y=6,file="Brows25Left"},{x=-1,y=5,file="Brows25Right"},}},
			[29]={direction=0, brows={{x=-1,y=-2,file="Brows25Right"},}},
			[30]={direction=0, brows={{x=3,y=12,file="Brows15Left"},{x=1,y=10,file="Brows25Right"},}},
			[31]={direction=0, brows={{x=-1,y=-1,file="Brows25Right"},}},
			[32]={direction=0, brows={{x=4,y=7,file="Brows25RightTall"},}},
			[33]={direction=0, brows={{x=5,y=8,file="Brows25RightTall"},}},
			[34]={direction=2, brows={{x=7,y=9,file="Brows15Right"},}},
			[35]={direction=0, brows={{x=8,y=8,file="Brows20"},}},
			[36]={direction=0, brows={{x=11,y=7,file="Brows20Left"},{x=9,y=9,file="Brows20RightFlat"},}},
			[37]={direction=0, brows={{x=-4,y=7,file="Brows25Right"},}},
			[38]={direction=0, brows={{x=-3,y=7,file="Brows20Right"},}},
			[39]={direction=0, brows={{x=4,y=1,file="Brows30Left"},{x=4,y=6,file="Brows30RightFlat"},}},
			[40]={direction=0, brows={{x=2,y=3,file="Brows30Left"},{x=-2,y=3,file="Brows30Right"},}},
			[41]={direction=2, brows={{x=-3,y=7,file="Brows20Right"},{x=3,y=4,file="Brows20Right"},}},
			[42]={direction=0, brows={{x=6,y=2,file="Brows15Left"},{x=3,y=1,file="Brows20Right"},}},
			[43]={direction=0, brows={{x=1,y=7,file="Brows25LeftTall"},{x=1,y=9,file="Brows25RightFlat"},}},
			[44]={direction=0, brows={{x=3,y=5,file="Brows25"},}},
			[45]={direction=0, brows={{x=8,y=12,file="Brows15Right"},}},
			[46]={direction=0, brows={{x=0,y=6,file="Brows25Left"},{x=0,y=10,file="Brows25RightFlat"},}},
			[47]={direction=0, brows={{x=9,y=8,file="Brows20Left"},{x=7,y=8,file="Brows20Right"},}},
			[48]={direction=0, brows={{x=3,y=1,file="Brows25LeftTall"},{x=-1,y=3,file="Brows25RightFlat"},}},
			[49]={direction=0, brows={{x=4,y=6,file="Brows25LeftFlat"},{x=0,y=4,file="Brows25Right"},}},
			[50]={direction=0, brows={{x=4,y=2,file="Brows20Left"},{x=3,y=2,file="Brows20Right"},}},
			[51]={direction=0, brows={{x=3,y=7,file="Brows15Left"},{x=0,y=7,file="Brows15Right"},{x=14,y=-4,file="Brows15Left"},{x=11,y=-4,file="Brows15Right"},{x=20,y=13,file="Brows15Left"},{x=17,y=14,file="Brows15Right"},}},
			[52]={direction=0, brows={{x=5,y=4,file="Brows25Left"},{x=6,y=7,file="Brows25RightFlat"},}},
			[53]={direction=0, brows={{x=1,y=7,file="Brows25LeftTall"},{x=3,y=7,file="Brows25RightTall"},}},
			[54]={direction=0, brows={{x=6,y=-1,file="Brows25Left"},{x=4,y=2,file="Brows25RightFlat"},}},
			[55]={direction=0, brows={{x=-2,y=1,file="Brows25Right"},}},
			[56]={direction=0, brows={{x=5,y=10,file="Brows25LeftTall"},{x=3,y=9,file="Brows25Right"},}},
			[57]={direction=2, brows={{x=-9,y=8,file="Brows25Right"},{x=-1,y=3,file="Brows25Right"},}},
			[58]={direction=0, brows={{x=-4,y=5,file="Brows25Right"},}},
			[59]={direction=0, brows={{x=8,y=6,file="Brows20Left"},{x=6,y=6,file="Brows20Right"},}},
			[60]={direction=0, brows={{x=5,y=-4,file="Brows25Left"},{x=4,y=-4,file="Brows25Right"},}},
			[61]={direction=0, brows={{x=7,y=-5,file="Brows25Left"},{x=8,y=-4,file="Brows25Right"},}},
			[62]={direction=0, brows={{x=4,y=-5,file="Brows25Left"},{x=5,y=-5,file="Brows25Right"},}},
			[63]={direction=0, brows={{x=5,y=10,file="Brows20Left"},{x=4,y=10,file="Brows20Right"},}},
			[64]={direction=0, brows={{x=-6,y=1,file="Brows25Right"},}},
			[65]={direction=0, brows={{x=7,y=8,file="Brows20Left"},{x=5,y=10,file="Brows20RightFlat"},}},
			[66]={direction=2, brows={{x=4,y=7,file="Brows20LeftFlat"},{x=3,y=2,file="Brows25RightTall"},}},
			[67]={direction=0, brows={{x=-2,y=-1,file="Brows25Right"},}},
			[68]={direction=0, brows={{x=5,y=10,file="Brows15Left"},{x=1,y=8,file="Brows20Right"},}},
			[69]={direction=0, brows={{x=5,y=3,file="Brows15Right"},}},
			[70]={direction=0, brows={{x=7,y=-1,file="Brows20Left"},{x=5,y=-1,file="Brows20Right"},}},
			[71]={direction=0, brows={{x=7,y=11,file="Brows25LeftFlat"},{x=5,y=9,file="Brows25RightTall"},}},
			[72]={direction=0, brows={{x=-4,y=8,file="Brows25Right"},}},
			[73]={direction=0, brows={{x=3,y=7,file="Brows25Left"},{x=2,y=7,file="Brows25Right"},}},
			[74]={direction=0, brows={{x=5,y=8,file="Brows25LeftFlat"},{x=2,y=5,file="Brows25Right"},}},
			[75]={direction=0, brows={{x=7,y=9,file="Brows25LeftFlat"},{x=3,y=6,file="Brows25Right"},}},
			[76]={direction=0, brows={{x=-4,y=1,file="Brows25Right"},}},
			[77]={direction=0, brows={{x=0,y=10,file="Brows20Right"},}},
			[78]={direction=0, brows={{x=1,y=8,file="Brows20Right"},}},
			[79]={direction=0, brows={{x=3,y=-2,file="Brows25Left"},{x=2,y=-1,file="Brows25Right"},}},
			[80]={direction=0, brows={{x=3,y=-1,file="Brows25Left"},{x=2,y=-1,file="Brows25Right"},}},
			[81]={direction=0, brows={{x=1,y=1,file="Unibrow30"},}},
			[82]={direction=0, brows={{x=7,y=4,file="Unibrow20"},{x=-7,y=18,file="Unibrow20"},{x=18,y=19,file="Unibrow20"},}},
			[83]={direction=0, brows={{x=3,y=4,file="Brows25"},}},
			[84]={direction=0, brows={{x=20,y=-1,file="Brows15Left"},{x=-3,y=3,file="Brows15Right"},}},
			[85]={direction=0, brows={{x=-10,y=10,file="Brows20Right"},{x=6,y=-2,file="Brows20Right"},}},
			[86]={direction=0, brows={{x=1,y=4,file="Brows25"},}},
			[87]={direction=0, brows={{x=6,y=1,file="Brows20Left"},{x=6,y=6,file="Brows20RightFlat"},}},
			[88]={direction=0, brows={{x=6,y=-2,file="Brows20Left"},{x=5,y=-1,file="Brows20Right"},}},
			[89]={direction=1, brows={{x=14,y=1,file="Brows20LeftFlat"},}},
			[90]={direction=0, brows={{x=-1,y=0,file="Brows30"},}},
			[91]={direction=0, brows={{x=7,y=8,file="Brows25Left"},{x=4,y=7,file="Brows25Right"},}},
			[92]={direction=0, brows={{x=-1,y=4,file="Brows30LeftTall"},{x=-4,y=2,file="Brows30Right"},}},
			[93]={direction=0, brows={{x=2,y=4,file="Brows25LeftTall"},{x=1,y=4,file="Brows25Right"},}},
			[94]={direction=0, brows={{x=5,y=6,file="Brows25LeftTall"},{x=6,y=6,file="Brows25RightTall"},}},
			[95]={direction=0, brows={{x=0,y=0,file="Brows25Left"},{x=-2,y=3,file="Brows25RightFlat"},}},
			[96]={direction=0, brows={{x=3,y=0,file="Brows25RightFlat"},}},
			[97]={direction=0, brows={{x=6,y=7,file="Brows15Left"},{x=2,y=7,file="Brows25RightFlat"},}},
			[98]={direction=0, brows={{x=5,y=4,file="Brows25Left"},{x=2,y=4,file="Brows25Right"},}},
			[99]={direction=0, brows={{x=2,y=4,file="Brows25Left"},{x=0,y=4,file="Brows25Right"},}},
			[100]={direction=0, brows={{x=-8,y=2,file="Brows30Right"},}},
			[101]={direction=0, brows={{x=1,y=-3,file="Brows30"},}},
			[102]={direction=0, brows={{x=0,y=12,file="Brows15Left"},{x=-5,y=12,file="Brows15Right"},{x=18,y=0,file="Brows15Left"},{x=15,y=0,file="Brows15Right"},{x=24,y=16,file="Brows15Left"},}},
			[103]={direction=0, brows={{x=-5,y=3,file="Brows15Right"},{x=8,y=7,file="Brows15Left"},{x=4,y=7,file="Brows15Right"},{x=26,y=5,file="Brows15Left"},}},
			[104]={direction=0, brows={{x=0,y=5,file="Brows25Right"},}},
			[105]={direction=0, brows={{x=-1,y=5,file="Brows25Right"},}},
			[106]={direction=0, brows={{x=-2,y=2,file="Brows25Right"},}},
			[107]={direction=0, brows={{x=6,y=4,file="Brows25LeftTall"},{x=4,y=4,file="Brows25Right"},}},
			[108]={direction=0, brows={{x=5,y=-1,file="Brows20Left"},{x=7,y=-1,file="Brows20Right"},}},
			[109]={direction=0, brows={{x=7,y=1,file="Brows20Left"},{x=8,y=1,file="Brows20Right"},}},
			[110]={direction=0, brows={{x=-2,y=4,file="Brows25LeftFlat"},{x=-2,y=0,file="Brows25Right"},}},
			[111]={direction=0, brows={{x=3,y=8,file="Brows20Left"},{x=9,y=8,file="Brows20Right"},}},
			[112]={direction=0, brows={{x=4,y=4,file="Brows20Right"},}},
			[113]={direction=0, brows={{x=11,y=0,file="Brows15Left"},{x=8,y=1,file="Brows15Right"},}},
			[114]={direction=0, brows={{x=8,y=2,file="Brows25"},}},
			[115]={direction=0, brows={{x=-1,y=-5,file="Brows25Right"},}},
			[116]={direction=0, brows={{x=-2,y=-1,file="Brows25Right"},}},
			[117]={direction=0, brows={{x=-3,y=4,file="Brows25Right"},}},
			[118]={direction=0, brows={{x=-4,y=5,file="Brows25Right"},}},
			[119]={direction=0, brows={{x=-2,y=5,file="Brows25Right"},}},
			[120]={direction=0, brows={{x=7,y=11,file="Unibrow20"},}},
			[121]={direction=0, brows={{x=4,y=6,file="Unibrow30"},}},
			[122]={direction=0, brows={{x=14,y=3,file="Brows20Left"},{x=11,y=3,file="Brows20Right"},}},
			[123]={direction=0, brows={{x=7,y=8,file="Brows20Left"},{x=5,y=11,file="Brows20RightFlat"},}},
			[124]={direction=0, brows={{x=7,y=0,file="Brows25Left"},{x=3,y=0,file="Brows25Right"},}},
			[125]={direction=0, brows={{x=8,y=9,file="Brows15Left"},{x=6,y=9,file="Brows15Right"},}},
			[126]={direction=0, brows={{x=7,y=7,file="Brows20"},}},
			[127]={direction=0, brows={{x=5,y=5,file="Brows25LeftFlat"},{x=3,y=2,file="Brows25RightTall"},}},
			[128]={direction=0, brows={{x=1,y=11,file="Brows15Right"},}},
			[129]={direction=0, brows={{x=-2,y=-2,file="Brows25Right"},}},
			[130]={direction=0, brows={{x=-5,y=-1,file="Brows25Right"},}},
			[131]={direction=0, brows={{x=-1,y=5,file="Brows25Right"},}},
			[132]={direction=0, brows={{x=11,y=4,file="Brows20Left"},{x=11,y=7,file="Brows20RightFlat"},}},
			[133]={direction=0, brows={{x=4,y=5,file="Brows25Left"},{x=3,y=8,file="Brows25RightFlat"},}},
			[134]={direction=0, brows={{x=4,y=3,file="Brows25LeftTall"},{x=3,y=5,file="Brows25RightFlat"},}},
			[135]={direction=0, brows={{x=-7,y=2,file="Brows25RightFlat"},}},
			[136]={direction=0, brows={{x=-4,y=6,file="Brows25Right"},}},
			[137]={direction=0, brows={{x=-1,y=-2,file="Brows30Right"},}},
			[138]={direction=0, brows={{x=6,y=5,file="Brows25Left"},{x=3,y=5,file="Brows25Right"},}},
			[139]={direction=0, brows={{x=6,y=2,file="Brows25"},}},
			[140]={direction=0, brows={{x=5,y=5,file="Brows25"},}},
			[141]={direction=0, brows={{x=-1,y=8,file="Brows25Right"},}},
			[142]={direction=0, brows={{x=3,y=-4,file="Brows20Right"},}},
			[143]={direction=0, brows={{x=5,y=6,file="Brows25"},}},
			[144]={direction=0, brows={{x=7,y=6,file="Brows20Right"},}},
			[145]={direction=0, brows={{x=11,y=7,file="Brows15Left"},{x=9,y=7,file="Brows15Right"},}},
			[146]={direction=0, brows={{x=0,y=13,file="Brows15Right"},}},
			[147]={direction=0, brows={{x=-1,y=4,file="Brows25RightFlat"},}},
			[148]={direction=0, brows={{x=3,y=4,file="Brows20Right"},}},
			[149]={direction=0, brows={{x=2,y=3,file="Brows25RightTall"},}},
			[150]={direction=0, brows={{x=-2,y=8,file="Brows25Right"},}},
			[151]={direction=0, brows={{x=4,y=5,file="Brows25"},}},
			[152]={direction=0, brows={{x=1,y=5,file="Brows25"},}},
			[153]={direction=0, brows={{x=1,y=1,file="Brows25Right"},}},
			[154]={direction=2, brows={{x=-2,y=-1,file="Brows25Right"},}},
			[155]={direction=0, brows={{x=3,y=2,file="Brows25Right"},}},
			[156]={direction=0, brows={{x=-4,y=8,file="Brows25RightTall"},}},
			[157]={direction=0, brows={{x=-1,y=-1,file="Brows20RightFlat"},}},
			[158]={direction=0, brows={{x=5,y=4,file="Brows20RightFlat"},}},
			[159]={direction=0, brows={{x=0,y=2,file="Brows25RightTall"},}},
			[160]={direction=0, brows={{x=-2,y=2,file="Brows25Right"},}},
			[161]={direction=0, brows={{x=11,y=2,file="Brows15Left"},{x=7,y=2,file="Brows15Right"},}},
			[162]={direction=0, brows={{x=0,y=3,file="Brows20Left"},{x=0,y=5,file="Brows20RightFlat"},}},
			[163]={direction=0, brows={{x=4,y=-4,file="Brows30Left"},{x=0,y=-4,file="Brows30Right"},}},
			[164]={direction=0, brows={{x=6,y=6,file="Brows25Left"},{x=4,y=9,file="Brows25RightFlat"},}},
			[165]={direction=0, brows={{x=4,y=-2,file="Brows25"},}},
			[166]={direction=0, brows={{x=-10,y=-1,file="Brows30Right"},}},
			[167]={direction=0, brows={{x=5,y=7,file="Brows20Left"},{x=7,y=8,file="Brows20Right"},}},
			[168]={direction=0, brows={{x=-2,y=9,file="Brows25Right"},}},
			[169]={direction=0, brows={{x=3,y=4,file="Brows20LeftFlat"},{x=1,y=1,file="Brows20Right"},}},
			[170]={direction=0, brows={{x=-2,y=5,file="Brows25LeftTall"},{x=-1,y=8,file="Brows25RightFlat"},}},
			[171]={direction=0, brows={{x=-5,y=2,file="Brows25Right"},}},
			[172]={direction=0, brows={{x=2,y=3,file="Brows25LeftTall"},{x=6,y=3,file="Brows25Right"},}},
			[173]={direction=0, brows={{x=9,y=8,file="Brows15Left"},{x=7,y=8,file="Brows15Right"},}},
			[174]={direction=0, brows={{x=3,y=5,file="Brows25"},}},
			[175]={direction=0, brows={{x=13,y=7,file="Brows15Left"},{x=12,y=7,file="Brows15Right"},}},
			[176]={direction=0, brows={{x=-9,y=14,file="Brows15Right"},{x=0,y=10,file="Brows15Right"},}},
			[177]={direction=0, brows={{x=1,y=3,file="Brows30RightFlat"},}},
			[178]={direction=0, brows={{x=-1,y=0,file="Brows30RightFlat"},}},
			[179]={direction=0, brows={{x=4,y=5,file="Brows20Left"},{x=6,y=6,file="Brows20Right"},}},
			[180]={direction=0, brows={{x=4,y=8,file="Brows20Left"},{x=3,y=8,file="Brows20Right"},}},
			[181]={direction=0, brows={{x=0,y=7,file="Brows20Right"},}},
			[182]={direction=0, brows={{x=5,y=8,file="Brows20LeftFlat"},{x=3,y=5,file="Brows20Right"},}},
			[183]={direction=0, brows={{x=7,y=6,file="Brows20Left"},{x=9,y=6,file="Brows20Right"},}},
			[184]={direction=0, brows={{x=5,y=0,file="Brows25Left"},{x=4,y=4,file="Brows25RightFlat"},}},
			[185]={direction=0, brows={{x=12,y=3,file="Brows20Left"},{x=10,y=3,file="Brows20Right"},}},
			[186]={direction=0, brows={{x=6,y=0,file="Brows25Right"},}},
			[187]={direction=0, brows={{x=7,y=9,file="Brows15Left"},{x=8,y=9,file="Brows15Right"},}},
			[188]={direction=0, brows={{x=6,y=7,file="Brows20Left"},{x=8,y=12,file="Brows20RightFlat"},}},
			[189]={direction=0, brows={{x=2,y=6,file="Brows15Left"},{x=4,y=6,file="Brows15Right"},}},
			[190]={direction=0, brows={{x=2,y=6,file="Brows25Left"},{x=5,y=10,file="Brows25RightFlat"},}},
			[191]={direction=0, brows={{x=2,y=2,file="Brows30Left"},{x=0,y=1,file="Brows30Right"},}},
			[192]={direction=0, brows={{x=7,y=0,file="Brows20Left"},{x=5,y=2,file="Brows20RightFlat"},}},
			[193]={direction=0, brows={{x=1,y=5,file="Brows25Right"},}},
			[194]={direction=0, brows={{x=6,y=3,file="Brows20Left"},{x=11,y=3,file="Brows20Right"},}},
			[195]={direction=0, brows={{x=1,y=3,file="Brows15Left"},{x=12,y=0,file="Brows15Right"},}},
			[196]={direction=0, brows={{x=-2,y=5,file="Brows25LeftTall"},{x=0,y=10,file="Brows25RightFlat"},}},
			[197]={direction=0, brows={{x=-8,y=5,file="Brows30Right"},}},
			[198]={direction=0, brows={{x=9,y=10,file="Brows15Left"},{x=3,y=7,file="Brows25Right"},}},
			[199]={direction=0, brows={{x=3,y=3,file="Brows25Left"},{x=1,y=6,file="Brows25RightFlat"},}},
			[200]={direction=2, brows={{x=-8,y=6,file="Brows25RightTall"},{x=1,y=-1,file="Brows25RightFlat"},}},
			[201]={direction=0, brows={{x=1,y=2,file="Unibrow30"},}},
			[202]={direction=1, brows={{x=8,y=-5,file="Brows25Left"},{x=19,y=1,file="Brows25Left"},}},
			[203]={direction=0, brows={{x=0,y=3,file="Brows25Right"},}},
			[204]={direction=0, brows={{x=5,y=1,file="Brows25Left"},{x=3,y=1,file="Brows25Right"},}},
			[205]={direction=0, brows={{x=9,y=5,file="Brows25Left"},{x=6,y=5,file="Brows25Right"},}},
			[206]={direction=0, brows={{x=-6,y=1,file="Brows30Right"},}},
			[207]={direction=0, brows={{x=4,y=1,file="Brows25LeftTall"},{x=7,y=3,file="Brows25RightFlat"},}},
			[208]={direction=0, brows={{x=-6,y=-4,file="Brows30Right"},}},
			[209]={direction=0, brows={{x=7,y=6,file="Brows20Left"},{x=10,y=9,file="Brows20RightFlat"},}},
			[210]={direction=0, brows={{x=10,y=1,file="Brows15Left"},{x=8,y=2,file="Brows15Right"},}},
			[211]={direction=0, brows={{x=0,y=4,file="Brows25LeftFlat"},{x=1,y=0,file="Brows25Right"},}},
			[212]={direction=0, brows={{x=6,y=9,file="Brows25Left"},{x=6,y=8,file="Brows25Right"},}},
			[213]={direction=0, brows={{x=-3,y=2,file="Brows25LeftTall"},{x=-4,y=4,file="Brows25RightFlat"},}},
			[214]={direction=0, brows={{x=2,y=6,file="Brows25"},}},
			[215]={direction=0, brows={{x=-1,y=9,file="Brows25LeftTall"},{x=0,y=9,file="Brows25Right"},}},
			[216]={direction=0, brows={{x=5,y=7,file="Brows20Left"},{x=7,y=9,file="Brows20RightFlat"},}},
			[217]={direction=0, brows={{x=-1,y=-2,file="Brows25Right"},}},
			[218]={direction=0, brows={{x=0,y=-5,file="Brows30Left"},{x=-2,y=-5,file="Brows30Right"},}},
			[219]={direction=0, brows={{x=4,y=-8,file="Brows30Left"},{x=2,y=-7,file="Brows30Right"},}},
			[220]={direction=0, brows={{x=0,y=8,file="Brows20LeftFlat"},{x=0,y=6,file="Brows20Right"},}},
			[221]={direction=0, brows={{x=3,y=0,file="Brows25"},}},
			[222]={direction=0, brows={{x=5,y=11,file="Brows15Left"},{x=5,y=12,file="Brows15Right"},}},
			[223]={direction=0, brows={{x=0,y=4,file="Brows25Right"},}},
			[224]={direction=0, brows={{x=-3,y=-4,file="Brows30Right"},}},
			[225]={direction=0, brows={{x=6,y=1,file="Brows25Left"},{x=2,y=1,file="Brows25Right"},}},
			[226]={direction=0, brows={{x=3,y=-1,file="Brows25RightTall"},}},
			[227]={direction=0, brows={{x=3,y=7,file="Brows20Right"},}},
			[228]={direction=0, brows={{x=-1,y=4,file="Brows20Right"},}},
			[229]={direction=0, brows={{x=0,y=0,file="Brows25Right"},}},
			[230]={direction=0, brows={{x=3,y=3,file="Brows25RightFlat"},}},
			[231]={direction=0, brows={{x=11,y=5,file="Brows20Right"},}},
			[232]={direction=0, brows={{x=9,y=3,file="Brows20Right"},}},
			[233]={direction=0, brows={{x=2,y=-2,file="Brows30Right"},}},
			[234]={direction=0, brows={{x=5,y=5,file="Brows20Left"},{x=6,y=6,file="Brows20Right"},}},
			[235]={direction=0, brows={{x=-2,y=1,file="Brows30Right"},}},
			[236]={direction=0, brows={{x=2,y=8,file="Brows15Left"},{x=-4,y=4,file="Brows25Right"},}},
			[237]={direction=0, brows={{x=4,y=12,file="ReverseBrows25"},}},
			[238]={direction=0, brows={{x=4,y=2,file="Brows30Left"},{x=2,y=1,file="Brows30Right"},}},
			[239]={direction=0, brows={{x=3,y=7,file="Brows25LeftTall"},{x=2,y=6,file="Brows25Right"},}},
			[240]={direction=0, brows={{x=13,y=10,file="Brows20Left"},{x=-6,y=8,file="Brows20Right"},}},
			[241]={direction=0, brows={{x=1,y=1,file="Brows25Right"},}},
			[242]={direction=0, brows={{x=16,y=2,file="Brows15Left"},{x=12,y=2,file="Brows15Right"},}},
			[243]={direction=0, brows={{x=-2,y=-2,file="Brows25Right"},}},
			[244]={direction=0, brows={{x=-4,y=-2,file="Brows25Right"},}},
			[245]={direction=0, brows={{x=-5,y=1,file="Brows25Right"},}},
			[246]={direction=0, brows={{x=-1,y=8,file="Brows25RightTall"},}},
			[247]={direction=0, brows={{x=-6,y=1,file="Brows30Right"},}},
			[248]={direction=0, brows={{x=-5,y=-4,file="Brows25RightFlat"},}},
			[249]={direction=0, brows={{x=-8,y=0,file="Brows25Right"},}},
			[250]={direction=0, brows={{x=3,y=4,file="Brows25RightFlat"},}},
			[251]={direction=0, brows={{x=-6,y=7,file="Brows30LeftTall"},{x=1,y=8,file="Brows30RightTall"},}},
			[252]={direction=0, brows={{x=-2,y=-1,file="Brows30Right"},}},
			[253]={direction=0, brows={{x=-2,y=-1,file="Brows25RightFlat"},}},
			[254]={direction=0, brows={{x=-5,y=4,file="Brows30RightFlat"},}},
			[255]={direction=0, brows={{x=-2,y=6,file="Brows25"},}},
			[256]={direction=0, brows={{x=-3,y=1,file="Brows25Right"},}},
			[257]={direction=0, brows={{x=-3,y=5,file="Brows20Right"},}},
			[258]={direction=0, brows={{x=5,y=6,file="Brows20Left"},{x=4,y=6,file="Brows20Right"},}},
			[259]={direction=0, brows={{x=3,y=2,file="Brows20Left"},{x=5,y=1,file="Brows20Right"},}},
			[260]={direction=0, brows={{x=1,y=5,file="Brows20Left"},{x=-2,y=5,file="Brows20Right"},}},
			[261]={direction=0, brows={{x=-3,y=5,file="Brows25Right"},}},
			[262]={direction=0, brows={{x=-5,y=5,file="Brows25Right"},}},
			[263]={direction=0, brows={{x=-6,y=3,file="Brows25Right"},}},
			[264]={direction=0, brows={{x=-5,y=4,file="Brows25Right"},}},
			[265]={direction=0, brows={{x=6,y=3,file="Brows25Right"},}},
			[266]={direction=0, brows={{x=-2,y=3,file="Brows30Right"},}},
			[267]={direction=0, brows={{x=-2,y=2,file="Brows25Right"},}},
			[268]={direction=0, brows={{x=-5,y=5,file="Brows30Right"},}},
			[269]={direction=0, brows={{x=1,y=6,file="Brows25LeftTall"},{x=0,y=6,file="Brows25Right"},}},
			[270]={direction=0, brows={{x=9,y=13,file="Brows20Right"},}},
			[271]={direction=1, brows={{x=13,y=5,file="Brows25Left"},}},
			[272]={direction=0, brows={{x=11,y=-1,file="Brows20Left"},{x=8,y=2,file="Brows20RightFlat"},}},
			[273]={direction=0, brows={{x=0,y=-2,file="Brows30Left"},{x=-1,y=3,file="Brows30RightFlat"},}},
			[274]={direction=0, brows={{x=0,y=0,file="Brows25"},}},
			[275]={direction=0, brows={{x=0,y=6,file="Brows20Right"},}},
			[276]={direction=0, brows={{x=5,y=3,file="Brows15Left"},{x=-4,y=-1,file="Brows30Right"},}},
			[277]={direction=0, brows={{x=-3,y=-1,file="Brows25Right"},}},
			[278]={direction=1, brows={{x=15,y=5,file="Brows15Left"},{x=21,y=9,file="Brows15Left"},}},
			[279]={direction=0, brows={{x=11,y=0,file="Brows20Right"},}},
			[280]={direction=0, brows={{x=3,y=2,file="Brows25"},}},
			[281]={direction=0, brows={{x=-1,y=6,file="Brows25Right"},}},
			[282]={direction=0, brows={{x=-3,y=6,file="Brows25Right"},}},
			[283]={direction=0, brows={{x=7,y=9,file="Brows20Left"},{x=9,y=11,file="Brows20RightFlat"},}},
			[284]={direction=0, brows={{x=6,y=8,file="Brows20Left"},{x=7,y=9,file="Brows20Right"},}},
			[285]={direction=0, brows={{x=5,y=7,file="Unibrow20"},{x=12,y=7,file="Unibrow20"},}},
			[286]={direction=0, brows={{x=1,y=6,file="Brows20Right"},}},
			[287]={direction=0, brows={{x=3,y=5,file="Brows25Left"},{x=2,y=9,file="Brows25RightFlat"},}},
			[288]={direction=0, brows={{x=-5,y=3,file="Brows25RightTall"},}},
			[289]={direction=1, brows={{x=7,y=3,file="Brows20Left"},{x=13,y=9,file="Brows20Left"},}},
			[290]={direction=0, brows={{x=2,y=4,file="Brows25Right"},}},
			[291]={direction=0, brows={{x=2,y=4,file="Brows20Left"},{x=9,y=5,file="Brows20Right"},}},
			[292]={direction=0, brows={{x=3,y=-1,file="Brows30Right"},}},
			[293]={direction=0, brows={{x=8,y=6,file="Brows20Left"},{x=9,y=7,file="Brows20Right"},}},
			[294]={direction=0, brows={{x=6,y=1,file="Brows20LeftFlat"},{x=5,y=-1,file="Brows20Right"},}},
			[295]={direction=0, brows={{x=-4,y=-1,file="Brows25Right"},}},
			[296]={direction=0, brows={{x=9,y=5,file="Brows20Left"},{x=7,y=8,file="Brows20RightFlat"},}},
			[297]={direction=0, brows={{x=3,y=6,file="Brows25Right"},}},
			[298]={direction=0, brows={{x=4,y=1,file="Brows20"},}},
			[299]={direction=0, brows={{x=4,y=2,file="Brows25RightFlat"},}},
			[300]={direction=0, brows={{x=4,y=9,file="Brows20"},}},
			[301]={direction=0, brows={{x=5,y=8,file="Brows25LeftTall"},{x=4,y=7,file="Brows25Right"},}},
			[302]={direction=0, brows={{x=4,y=0,file="Brows25Left"},{x=1,y=4,file="Brows25RightFlat"},}},
			[303]={direction=0, brows={{x=22,y=5,file="Brows20Left"},}},
			[304]={direction=0, brows={{x=-10,y=-1,file="Brows30Right"},}},
			[305]={direction=2, brows={{x=3,y=7,file="Brows25RightTall"},}},
			[306]={direction=0, brows={{x=1,y=5,file="Brows25Right"},}},
			[307]={direction=0, brows={{x=6,y=8,file="Brows25Left"},{x=4,y=7,file="Brows25Right"},}},
			[308]={direction=0, brows={{x=6,y=6,file="Brows25Left"},{x=5,y=7,file="Brows25Right"},}},
			[309]={direction=0, brows={{x=-3,y=2,file="Brows25Right"},}},
			[310]={direction=0, brows={{x=0,y=6,file="Brows20Right"},}},
			[311]={direction=0, brows={{x=1,y=7,file="Brows20LeftFlat"},{x=3,y=3,file="Brows20Right"},}},
			[312]={direction=0, brows={{x=5,y=6,file="Brows20Left"},{x=8,y=7,file="Brows20Right"},}},
			[313]={direction=1, brows={{x=6,y=3,file="Brows20Left"},{x=16,y=7,file="Brows20Left"},}},
			[314]={direction=0, brows={{x=5,y=5,file="Brows25LeftTall"},{x=6,y=5,file="Brows25RightTall"},}},
			[315]={direction=0, brows={{x=8,y=5,file="Brows20Left"},{x=6,y=5,file="Brows20Right"},}},
			[316]={direction=0, brows={{x=7,y=3,file="Brows15Left"},{x=12,y=4,file="Brows15Right"},}},
			[317]={direction=0, brows={{x=9,y=-1,file="Brows20Right"},}},
			[318]={direction=0, brows={{x=-4,y=1,file="Brows30Right"},}},
			[319]={direction=0, brows={{x=0,y=0,file="Brows25Right"},}},
			[320]={direction=0, brows={{x=4,y=3,file="Brows15Left"},{x=8,y=2,file="Brows15Right"},}},
			[321]={direction=0, brows={{x=10,y=4,file="Brows15Right"},}},
			[322]={direction=0, brows={{x=2,y=1,file="Brows25Right"},}},
			[323]={direction=0, brows={{x=3,y=3,file="Brows25RightTall"},}},
			[324]={direction=0, brows={{x=1,y=-4,file="Brows30Right"},}},
			[325]={direction=1, brows={{x=11,y=5,file="Brows20Left"},{x=19,y=8,file="Brows20Left"},}},
			[326]={direction=0, brows={{x=0,y=-1,file="Brows25Right"},{x=0,y=-1,file="Brows25Right"},}},
			[327]={direction=1, brows={{x=7,y=3,file="Brows25Left"},{x=19,y=8,file="Brows25LeftFlat"},}},
			[328]={direction=0, brows={{x=17,y=8,file="Brows15Right"},}},
			[329]={direction=0, brows={{x=-4,y=5,file="Brows30Right"},}},
			[330]={direction=0, brows={{x=0,y=-2,file="Brows30"},}},
			[331]={direction=0, brows={{x=6,y=-1,file="Brows25Left"},{x=5,y=-1,file="Brows25Right"},}},
			[332]={direction=0, brows={{x=1,y=4,file="Brows25Right"},}},
			[333]={direction=0, brows={{x=6,y=2,file="Brows20Left"},{x=6,y=6,file="Brows20RightFlat"},}},
			[334]={direction=0, brows={{x=3,y=5,file="Brows20Left"},{x=5,y=5,file="Brows20Right"},}},
			[335]={direction=0, brows={{x=2,y=5,file="Brows25Left"},{x=0,y=7,file="Brows25RightFlat"},}},
			[336]={direction=0, brows={{x=-1,y=0,file="Brows25Right"},}},
			[337]={direction=0, brows={{x=0,y=0,file="Brows30Right"},}},
			[338]={direction=0, brows={{x=3,y=3,file="Brows25Left"},{x=5,y=6,file="Brows25RightFlat"},}},
			[339]={direction=0, brows={{x=9,y=6,file="Brows15Right"},}},
			[340]={direction=0, brows={{x=7,y=6,file="Brows25Right"},}},
			[341]={direction=0, brows={{x=6,y=2,file="Brows20Left"},{x=3,y=0,file="Brows25Right"},}},
			[342]={direction=0, brows={{x=1,y=1,file="Brows25Right"},}},
			[343]={direction=0, brows={{x=-2,y=1,file="Brows30Left"},{x=-2,y=6,file="Brows30RightFlat"},}},
			[344]={direction=0, brows={{x=8,y=6,file="Unibrow20"},{x=-1,y=5,file="Unibrow20"},{x=19,y=8,file="Unibrow20"},}},
			[345]={direction=0, brows={{x=9,y=-1,file="Brows25"},}},
			[346]={direction=0, brows={{x=9,y=8,file="Brows25RightTall"},}},
			[347]={direction=1, brows={{x=2,y=1,file="Brows20Left"},{x=23,y=11,file="Brows20Left"},}},
			[348]={direction=0, brows={{x=-2,y=-4,file="Brows25Left"},{x=8,y=-3,file="Brows25Right"},}},
			[349]={direction=0, brows={{x=-1,y=-2,file="Brows30Right"},}},
			[350]={direction=0, brows={{x=-1,y=6,file="Brows25RightTall"},}},
			[351]={direction=0, brows={{x=4,y=7,file="Brows15Left"},{x=3,y=8,file="Brows20RightFlat"},}},
			[352]={direction=0, brows={{x=6,y=9,file="Brows20Right"},}},
			[353]={direction=0, brows={{x=3,y=5,file="Brows30Left"},{x=2,y=6,file="Brows30RightTall"},}},
			[354]={direction=0, brows={{x=2,y=5,file="Brows25Left"},{x=5,y=5,file="Brows25Right"},}},
			[355]={direction=0, brows={{x=-9,y=-1,file="Brows30Right"},}},
			[356]={direction=0, brows={{x=9,y=3,file="Unibrow20"},}},
			[357]={direction=0, brows={{x=-4,y=7,file="Brows20Right"},}},
			[358]={direction=0, brows={{x=2,y=6,file="Brows20LeftFlat"},{x=3,y=2,file="Brows20Right"},}},
			[359]={direction=0, brows={{x=6,y=9,file="Brows20Left"},{x=4,y=10,file="Brows20Right"},}},
			[360]={direction=0, brows={{x=1,y=1,file="Brows25Left"},{x=0,y=1,file="Brows25Right"},}},
			[361]={direction=0, brows={{x=6,y=3,file="Brows20Left"},{x=8,y=3,file="Brows20Right"},}},
			[362]={direction=0, brows={{x=3,y=0,file="Brows30Left"},{x=-1,y=0,file="Brows30Right"},}},
			[363]={direction=0, brows={{x=5,y=1,file="Brows20Left"},{x=5,y=4,file="Brows20RightFlat"},}},
			[364]={direction=0, brows={{x=5,y=0,file="Brows20Left"},{x=5,y=0,file="Brows20Right"},}},
			[365]={direction=0, brows={{x=7,y=-2,file="Brows20Right"},}},
			[366]={direction=0, brows={{x=10,y=1,file="Brows20"},}},
			[367]={direction=0, brows={{x=7,y=1,file="Brows20Right"},}},
			[368]={direction=0, brows={{x=1,y=4,file="Brows25Right"},}},
			[369]={direction=0, brows={{x=-4,y=-2,file="Brows25Right"},}},
			[370]={direction=0, brows={{x=4,y=4,file="Brows20Right"},}},
			[371]={direction=0, brows={{x=0,y=5,file="Brows25Right"},}},
			[372]={direction=0, brows={{x=7,y=8,file="Brows20Left"},{x=4,y=10,file="Brows20RightFlat"},}},
			[373]={direction=0, brows={{x=1,y=4,file="Brows20Right"},}},
			[374]={direction=0, brows={{x=-4,y=8,file="Unibrow20"},}},
			[375]={direction=0, brows={{x=2,y=-3,file="Brows25Right"},}},
			[376]={direction=0, brows={{x=3,y=7,file="Brows25LeftTall"},{x=8,y=6,file="Brows25Right"},}},
			[377]={direction=0, brows={{x=4,y=2,file="Unibrow30"},}},
			[378]={direction=0, brows={{x=-1,y=7,file="Unibrow30"},}},
			[379]={direction=0, brows={{x=4,y=4,file="Unibrow30"},}},
			[380]={direction=0, brows={{x=-7,y=8,file="Brows25RightFlat"},}},
			[381]={direction=0, brows={{x=-5,y=17,file="Brows20RightFlat"},}},
			[382]={direction=0, brows={{x=2,y=11,file="Brows20Right"},}},
			[383]={direction=0, brows={{x=-1,y=7,file="Brows25RightTall"},}},
			[384]={direction=0, brows={{x=-4,y=3,file="Brows25Right"},}},
			[385]={direction=0, brows={{x=4,y=6,file="Brows25"},}},
			[386]={direction=0, brows={{x=1,y=8,file="Brows25LeftTall"},{x=3,y=8,file="Brows25RightTall"},}},
			[413]={direction=0, brows={{x=-5,y=-3,file="Brows30Left"},{x=-7,y=-2,file="Brows30Right"},}},
		},
		PokIDToDexNum = {
			[286] = 261, [305] = 277, [370] = 293, [337] = 309, [351] = 325, [326] = 341, [369] = 357, [397] = 373, [287] = 262, [309] = 278,
			[371] = 294, [338] = 310, [352] = 326, [327] = 342, [411] = 358, [398] = 374, [288] = 263, [310] = 279, [372] = 295, [353] = 311,
			[308] = 327, [318] = 343, [376] = 359, [399] = 375, [277] = 252, [289] = 264, [392] = 280, [335] = 296, [354] = 312, [332] = 328,
			[319] = 344, [360] = 360, [400] = 376, [290] = 265, [393] = 281, [336] = 297, [386] = 313, [333] = 329, [388] = 345, [346] = 361,
			[401] = 377, [278] = 253, [291] = 266, [394] = 282, [350] = 298, [387] = 314, [334] = 330, [389] = 346, [347] = 362, [402] = 378,
			[292] = 267, [311] = 283, [320] = 299, [363] = 315, [344] = 331, [390] = 347, [341] = 363, [403] = 379, [279] = 254, [293] = 268,
			[312] = 284, [315] = 300, [367] = 316, [345] = 332, [391] = 348, [342] = 364, [407] = 380, [294] = 269, [306] = 285, [316] = 301,
			[368] = 317, [358] = 333, [328] = 349, [343] = 365, [408] = 381, [280] = 255, [295] = 270, [307] = 286, [322] = 302, [330] = 318,
			[359] = 334, [329] = 350, [373] = 366, [404] = 382, [296] = 271, [364] = 287, [355] = 303, [331] = 319, [380] = 335, [385] = 351,
			[374] = 367, [405] = 383, [281] = 256, [297] = 272, [365] = 288, [382] = 304, [313] = 320, [379] = 336, [317] = 352, [375] = 368,
			[406] = 384, [282] = 257, [298] = 273, [366] = 289, [383] = 305, [314] = 321, [348] = 337, [377] = 353, [381] = 369, [409] = 385,
			[283] = 258, [299] = 274, [301] = 290, [384] = 306, [339] = 322, [349] = 338, [378] = 354, [325] = 370, [410] = 386, [284] = 259,
			[300] = 275, [302] = 291, [356] = 307, [340] = 323, [323] = 339, [361] = 355, [395] = 371, [285] = 260, [304] = 276, [303] = 292,
			[357] = 308, [321] = 324, [324] = 340, [362] = 356, [396] = 372,
		}
	}

	function shouldDrawBrows()
		return self.isEnabled and Program.currentScreen == TrackerScreen and Options.IconSetMap[Options["Pokemon icon set"]].name == "Stadium"
	end

	function perPokemonBrows()
		local pokemon = Tracker.getViewedPokemon()
		local pokemonID = 0
		if pokemon ~= nil and PokemonData.isImageIDValid(pokemon.pokemonID) then
			if self.PokIDToDexNum[pokemon.pokemonID] then
				pokemonID = self.PokIDToDexNum[pokemon.pokemonID]
			else
				pokemonID = pokemon.pokemonID
			end
		end
		if self.browsOptions[pokemonID] ~= nil then return self.browsOptions[pokemonID] else return {direction=0, brows={x=0,y=0, file="Brows25"}} end
	end

	function drawBrows()
		if shouldDrawBrows() then
			local browsData = perPokemonBrows()
			local offsetAdjust = browsData.brows
			local direction = browsData.direction
			for i = 1, 6, 1 do
				if offsetAdjust[i] ~= nil then
					local controlID = "brows" .. i
					local offset = {x=Constants.SCREEN.WIDTH + Constants.SCREEN.MARGIN,y=Constants.SCREEN.MARGIN - 2}
					if self.browsUp then
						if direction == 0 then
							offset.y = offset.y - 3
						elseif direction == 1 then
							offset.x = offset.x + 2
							offset.y = offset.y - 2
						elseif direction == 2 then
							offset.x = offset.x - 2
							offset.y = offset.y - 2
						end
					end
					local filepath = ""
					if offsetAdjust[i] ~= nil then
						offset.x = offset.x + offsetAdjust[i].x
						offset.y = offset.y + offsetAdjust[i].y
						local sizePattern = "%a*(%d+)"
						local size = string.match(offsetAdjust[i].file,sizePattern)
						drawBrowsIcon(offsetAdjust[i].file, offset.x, offset.y, tonumber(size))
					end
				end
			end
		end
	end

	function drawBrowsIcon(name, x, y, size)
		if name == nil or name == "" or x == nil or y == nil or size == nil or size == "" then return end
		local filePath = self.imagePath .. name .. ".png"
		gui.drawImage(filePath, x, y,size, size)
	end

	function updateBrowsSpeed(frames)
		self.defaultFrames = frames
		Brows.updateSetting("Default Brows Speed", self.defaultFrames)
	end

	function self.startup()
		self.imagePath = FileManager.getCustomFolderPath() .. "brows" .. FileManager.slash
		self.frameCounter = 0
	end

	function self.afterEachFrame()
		if shouldDrawBrows() then
			local fpsMultiplier = math.max(client.get_approx_framerate() / 60, 1) -- minimum of 1
			if self.allowTurbo == true then fpsMultiplier = 1 end
            local adjustedVisibilityFrames = self.defaultFrames * fpsMultiplier

            self.frameCounter = self.frameCounter + 1
            if self.frameCounter >= adjustedVisibilityFrames then
                self.frameCounter = 0
                self.browsUp = not self.browsUp
				local battleFrames = 0
				if Program.Frames.waitToDraw > 30 or self.inBattleCountdown then
					self.inBattleCountdown = true
					battleFrames = Program.Frames.waitToDraw
					Tracker.Data.isViewingOwn = true
					Program.redraw(true)
					Program.Frames.waitToDraw = battleFrames
				else
					Program.redraw(true)
				end
            end
		end
	end
	function self.afterRedraw()
		if shouldDrawBrows() then drawBrows() end
	end
	function self.checkForUpdates()
		-- Replace "MyUsername" and "ExtensionRepo" in the below URL to match your repo url
		local versionCheckUrl = "https://api.github.com/repos/jtigues/BrowsTrackerAddOn/releases/latest"
		-- Update the pattern below to match your version. You can check what this looks like by visiting the above url
		local versionResponsePattern = '"tag_name":%s+"%w+(%d+%.%d+)"' -- matches "1.0" in "tag_name": "v1.0"
		-- Replace "MyUsername" and "ExtensionRepo" in the below URL to match your repo url
		local downloadUrl = "https://github.com/jtigues/BrowsTrackerAddOn/releases/latest"

		local isUpdateAvailable = Utils.checkForVersionUpdate(versionCheckUrl, self.version, versionResponsePattern, nil)
		return isUpdateAvailable, downloadUrl
	end
	return self
end
return Brows