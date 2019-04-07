REM ### Windows Update

	REM TITLE: Enable automatic Windows updates
		REM LINK: http://www.tenforums.com/tutorials/8013-windows-update-automatic-updates-enable-disable-windows-10-a.html
			REM OPTIONS: 0x00000001=On, 0x00000000=Off
				REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /F 1>NUL

	REM TITLE: Never notify or check for Windows updates
		REM LINK: http://www.tenforums.com/tutorials/8013-windows-update-automatic-updates-enable-disable-windows-10-a.html
			REM OPTIONS: 0x00000001=On, 0x00000000=Off
				REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /F 1>NUL
				REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /V "NoAutoUpdate" /T "REG_DWORD" /D "0x00000001" /F 1>NUL	REM TITLE: Never notify or check for Windows updates

	REM TITLE: Notify before downloading and installing Windows updates
		REM LINK: http://www.tenforums.com/tutorials/8013-windows-update-automatic-updates-enable-disable-windows-10-a.html
			REM OPTIONS: 0x00000001=On, 0x00000000=Off
				REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /F 1>NUL
				REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /V "NoAutoUpdate" /T "REG_DWORD" /D "0x00000000" /F 1>NUL
				REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /V "AUOptions" /T "REG_DWORD" /D "0x00000002" /F 1>NUL
				REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /V "ScheduledInstallDay" /T "REG_DWORD" /D "0x00000000" /F 1>NUL
				REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /V "ScheduledInstallTime" /T "REG_DWORD" /D "0x00000003" /F 1>NUL