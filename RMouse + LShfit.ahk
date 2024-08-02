#SingleInstance,Force

Menu, MyMainMenu, Add, Pastas, MenuHandler
Menu, MySubMenu1, Add, Área de Trabalho, SubMenu1Label
Menu, MySubMenu1, Add, Cunhaww, SubMenu1Label
Menu, MySubMenu1, Add, Scripts, SubMenu1Label
Menu, MySubMenu1, Add, IMPACTA, SubMenu1Label
Menu, MySubMenu1, Add, Tech Dados, SubMenu1Label
Menu, MySubMenu1, Add, Mongd, SubMenu1Label
Menu, MySubMenu1, Add, Mongsh, SubMenu1Label
Menu, MyMainMenu, Add, Pastas, :MySubMenu1

Menu, MyMainMenu, Add, Apps, MenuHandler
Menu, MySubMenu2, Add, Calculator, SubMenu2Label
Menu, MySubMenu2, Add, Chrome, SubMenu2Label
Menu, MySubMenu2, Add, Google Translate, SubMenu2Label
Menu, MySubMenu2, Add, Notes, SubMenu2Label
Menu, MySubMenu2, Add, Crunchyroll, SubMenu2Label
Menu, MyMainMenu, Add, Apps, :MySubMenu2

Menu, MyMainMenu, Add, Mute/Unmute, MainMenuLabel

return

+RButton Up::
Menu, MyMainMenu, Show
return

MenuHandler:
return

SubMenu1Label:
If (A_ThisMenuItemPos = 1) {
	Run, %A_desktop%
} 

else if (A_ThisMenuItemPos = 2) {
	Run, C:\Users\lucas\OneDrive\Área de Trabalho\Cunhaww
}

else if (A_ThisMenuItemPos = 3) {
	Run, C:\Users\lucas\OneDrive\Área de Trabalho\Cunhaww\Scripts
}

else if (A_ThisMenuItemPos = 4) {
	Run, C:\Users\lucas\OneDrive\Área de Trabalho\Cunhaww\IMPACTA - Full Stack
}

else if (A_ThisMenuItemPos = 5) {
	Run, C:\Users\lucas\OneDrive\Área de Trabalho\Tech Dados
}

else if (A_ThisMenuItemPos = 6) {
	Run, C:\Program Files\MongoDB\Server\7.0\bin
}

else if (A_ThisMenuItemPos = 7) {
	Run, C:\Program Files\mongosh
}


return

SubMenu2Label:
If (A_ThisMenuItemPos = 1) {
	Run, calc.exe
} 

else if (A_ThisMenuItemPos = 2) {
	Run, https://www.google.com
}

else if (A_ThisMenuItemPos = 3) {
	Run, https://www.google.com/search?q=google+tradutor&oq=goo&gs_lcrp=EgZjaHJvbWUqDAgCECMYJxiABBiKBTIGCAAQRRg8MgYIARBFGDkyDAgCECMYJxiABBiKBTIMCAMQIxgnGIAEGIoFMgYIBBBFGDwyBggFEEUYPDIGCAYQRRhBMgYIBxBFGEHSAQgyOTYxajBqN6gCALACAA&sourceid=chrome&ie=UTF-8
}

else if (A_ThisMenuItemPos = 4) {
	Run, notepad.exe
}

else if (A_ThisMenuItemPos = 5) {
	Run, https://www.crunchyroll.com/pt-br
}

return

MainMenuLabel:
if (A_ThisMenuItemPos = 3) {
	Send, {Volume_Mute}
}
return