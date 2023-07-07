<#
.SYNOPSIS
  removes the timer for automount of synched onedrive or sharepoint directories
.DESCRIPTION
  Sets the value of HKCU:\SOFTWARE\Microsoft\OneDrive\Accounts\Business1 to 1
.NOTES
  Version:        1.0
  Author:         u-schmutz@bluewin.ch
  Creation Date:  2023-07-07
  Purpose/Change: Initial script development
#>


$Path = "HKCU:\SOFTWARE\Microsoft\OneDrive\Accounts\Business1"
$Name = "Timerautomount"
$Type = "QWORD"
$Value = 1

Set-ItemProperty -Path $Path -Name $Name -Type $Type -Value $Value 
