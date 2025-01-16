<#
.SYNOPSIS
    Ensure 'Allow users to enable online speech recognition services' is set to 'Disabled'

.NOTES
    Author          : Paul Miguel Nieuwendyk
    LinkedIn        : linkedin.com/in/paul-miguel-nieuwendyk/
    GitHub          : github.com/paulmiguelsec
    Date Created    : 16-01-2025
    Last Modified   : 16-01-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    CIS Control:    : Explicitly Not Mapped
    CIS Windows 10 Stand-alone v3.0.0: 18.1.2.2 (L1)

.TESTED ON
    Date(s) Tested  : 16-01-2025
    Tested By       : Paul Miguel Nieuwendyk
    Systems Tested  : WIN 10
    PowerShell Ver. : 5.1.19041.5247

.USAGE
    PS C:\> .\CIS_18.1.2.2_OnlineSpeechRecognition_Disabled.ps1
#>

# Define reg path and key
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\InputPersonalization"
$registryKey = "AllowInputPersonalization"

# Check if reg path exists, if not, create it.
if (-not(Test-Path -Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

# Set reg key
Set-ItemProperty -Path $registryPath -Name $registryKey -Value 0


Write-Host "'Allow users to enable online speech recognition services' is set to 'Disabled'"
