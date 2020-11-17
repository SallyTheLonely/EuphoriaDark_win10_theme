data = { [1] = "; Copyright © Sally the Lonely.",
	[2] = "",
	[3] = "[Theme]",
	[4] = "; Windows - IDS_THEME_DISPLAYNAME_AERO",
	[5] = "DisplayName=EuphoriaDark [scripted]",
	[6] = "SetLogonBackground=0",
	[7] = "",
	[8] = "; Computer - SHIDI_SERVER",
	[9] = "[CLSID\\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\\DefaultIcon]",
	[10] = "DefaultValue=C:\\?.ico",
	[11] = "",
	[12] = "; UsersFiles - SHIDI_USERFILES",
	[13] = "[CLSID\\{59031A47-3F72-44A7-89C5-5595FE6B30EE}\\DefaultIcon]",
	[14] = "DefaultValue=C:\\?.ico",
	[15] = "",
	[16] = "; Network - SHIDI_MYNETWORK",
	[17] = "[CLSID\\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\\DefaultIcon]",
	[18] = "DefaultValue=C:\\?.ico",
	[19] = "",
	[20] = "; Recycle Bin - SHIDI_RECYCLERFULL SHIDI_RECYCLER",
	[21] = "[CLSID\\{645FF040-5081-101B-9F08-00AA002F954E}\\DefaultIcon]",
	[22] = "Full=C:\\?.ico",
	[23] = "Empty=C:\\?.ico",
	[24] = "",
	[25] = "[Control Panel\\Colors]",
	[26] = "",
	[27] = "",
	[28] = "",
	[29] = "",
	[30] = "",
	[31] = "",
	[32] = "",
	[33] = "",
	[34] = "",
	[35] = "",
	[36] = "",
	[37] = "",
	[38] = "",
	[39] = "",
	[40] = "",
	[41] = "",
	[42] = "",
	[43] = "",
	[44] = "",
	[45] = "",
	[46] = "",
	[47] = "",
	[48] = "",
	[49] = "",
	[50] = "",
	[51] = "",
	[52] = "",
	[53] = "",
	[54] = "",
	[55] = "",
	[56] = "",
	[57] = "",
	[58] = "",
	[59] = "",
	[60] = "[Control Panel\\Cursors]",
	[61] = "AppStarting=%SystemRoot%\\cursors\\dot.cur",
	[62] = "Arrow=%SystemRoot%\\cursors\\dot.cur",
	[63] = "Crosshair=%SystemRoot%\\cursors\\dot.cur",
	[64] = "Hand=%SystemRoot%\\cursors\\dot.cur",
	[65] = "Help=%SystemRoot%\\cursors\\dot.cur",
	[66] = "IBeam=%SystemRoot%\\cursors\\dot.cur",
	[67] = "No=%SystemRoot%\\cursors\\dot.cur",
	[68] = "NWPen=%SystemRoot%\\cursors\\dot.cur",
	[69] = "SizeAll=%SystemRoot%\\cursors\\dot.cur",
	[70] = "SizeNESW=%SystemRoot%\\cursors\\dot.cur",
	[71] = "SizeNS=%SystemRoot%\\cursors\\dot.cur",
	[72] = "SizeNWSE=%SystemRoot%\\cursors\\dot.cur",
	[73] = "SizeWE=%SystemRoot%\\cursors\\dot.cur",
	[74] = "UpArrow=%SystemRoot%\\cursors\\dot.cur",
	[75] = "Wait=%SystemRoot%\\cursors\\dot.cur",
	[76] = "DefaultValue=EuphoriaDark",
	[77] = "",
	[78] = "[Control Panel\\Desktop]",
	[79] = "Wallpaper=C:\\?.png",
	[80] = "TileWallpaper=0",
	[81] = "WallpaperStyle=10",
	[82] = "",
	[83] = "[VisualStyles]",
	[84] = "Path=%SystemRoot%\\resources\\themes\\Aero\\AeroLite.msstyles",
	[85] = "ColorStyle=NormalColor",
	[86] = "Size=NormalSize",
	[87] = "AutoColorization=0",
	[88] = "ColorizationColor=0XC4D09FDE",
	[89] = "VisualStyleVersion=10",
	[90] = "HighContrast=4",
	[91] = "Transparency=1",
	[92] = "",
	[93] = "[boot]",
	[94] = "SCRNSAVE.EXE=",
	[95] = "",
	[96] = "[MasterThemeSelector]",
	[97] = "MTSM=RJSPBS",
	[98] = "",
	[99] = "[Sounds]",
	[100] = "; IDS_SCHEME_DEFAULT",
	[101] = "SchemeName=Windows Default"
}
hue = {}
color = nil
white = 8
black = 1
theme = io.open("EuphoriaDarkScripted.theme", "w")

function hueShift(r, g, b, scheme)
	hue[1] = r
	hue[2] = g
	hue[3] = b
	color = scheme
	
	sector = {
		[26] = "ActiveTitle="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[27] = "Background="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[28] = "GrayText="..math.floor((50*hue[1])).." "..math.floor((39*hue[2])).." "..math.floor((44*hue[3])),
		[29] = "Hilight="..math.floor((55*hue[1])).." "..math.floor((40*hue[2])).." "..math.floor((50*hue[3])),
		[30] = "HilightText="..math.floor((80*hue[1])).." "..math.floor((60*hue[2])).." "..math.floor((70*hue[3])),
		[31] = "HotTrackingColor="..math.floor((80*hue[1])).." "..math.floor((60*hue[2])).." "..math.floor((70*hue[3])),
		[32] = "InactiveTitle="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[33] = "InactiveTitleText="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[34] = "TitleText="..math.floor((80*hue[1])).." "..math.floor((60*hue[2])).." "..math.floor((70*hue[3])),
		[35] = "Window="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[36] = "WindowText="..math.floor((80*hue[1])).." "..math.floor((60*hue[2])).." "..math.floor((70*hue[3])),
		[37] = "Scrollbar="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[38] = "Menu="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[39] = "WindowFrame="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[40] = "MenuText="..math.floor((80*hue[1])).." "..math.floor((60*hue[2])).." "..math.floor((70*hue[3])),
		[41] = "ActiveBorder="..math.floor((69*hue[1])).." "..math.floor((44*hue[2])).." "..math.floor((85*hue[3])),
		[42] = "InactiveBorder="..math.floor((36*color)).." "..math.floor((36*color)).." "..math.floor((36*color)),
		[43] = "AppWorkspace="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[44] = "InfoText="..math.floor((80*hue[1])).." "..math.floor((60*hue[2])).." "..math.floor((70*hue[3])),
		[45] = "InfoWindow="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[46] = "MenuHilight="..math.floor((69*hue[1])).." "..math.floor((44*hue[2])).." "..math.floor((85*hue[3])),
		[47] = "MenuBar="..math.floor((56*color)).." "..math.floor((56*color)).." "..math.floor((56*color)),
		[48] = "",
		[49] = "ButtonFace="..math.floor((30*color)).." "..math.floor((30*color)).." "..math.floor((30*color)),
		[50] = "ButtonText="..math.floor((68*hue[1])).." "..math.floor((56*hue[2])).." "..math.floor((61*hue[3])),
		[51] = "ButtonShadow="..math.floor((56*color)).." "..math.floor((56*color)).." "..math.floor((56*color)),
		[52] = "ButtonHilight="..math.floor((53*hue[1])).." "..math.floor((34*hue[2])).." "..math.floor((44*hue[3])),
		[53] = "ButtonDkShadow="..math.floor((56*color)).." "..math.floor((56*color)).." "..math.floor((56*color)),
		[54] = "ButtonLight="..math.floor((56*color)).." "..math.floor((56*color)).." "..math.floor((56*color)),
		[55] = "ButtonAlternateFace="..math.floor((53*hue[1])).." "..math.floor((34*hue[2])).." "..math.floor((44*hue[3])),
		[56] = "",
		[57] = "GradientActiveTitle="..math.floor((56*color)).." "..math.floor((56*color)).." "..math.floor((56*color)),
		[58] = "GradientInactiveTitle="..math.floor((56*color)).." "..math.floor((56*color)).." "..math.floor((56*color))
	}
	
	for i = 26, 58 do
		data[i] = sector[i]
	end
	
	theme:write(table.concat(data, "\n"))
	theme:close()
end

hueShift(1.7, 1.3, 0.7, 1)

--[[ Presets
	Original: hueShift(1, 1, 1, black)
	
	Golden: hueShift(1.9, 1.78, 1.05, 1)
	Orange:	hueShift(1.7, 1.3, 0.7, 1)
	Red: hueShift(1.9, 1.1, 0.7, 1)
	Spring: hueShift(1.14, 1.9, 0.4, 1)
	Hoar: hueShift(1.24, 1.65, 1.9, 1)
	Night: hueShift(1.1, 1, 1.5, 1)
	Mint: hueShift(0.85, 1.9, 1.05, 1)
	Sakura: hueShift(2.7, 2, 2.3, 8)
]]