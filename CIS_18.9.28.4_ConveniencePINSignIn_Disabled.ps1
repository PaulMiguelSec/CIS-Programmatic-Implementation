<#
.SYNOPSIS
    Ensure 'Turn on convenience PIN sign-in' is set to 'Disabled'

.NOTES
    Author          : Paul Miguel Nieuwendyk
    LinkedIn        : linkedin.com/in/paul-miguel-nieuwendyk/
    GitHub          : github.com/paulmiguelsec
    Date Created    : 13-01-2025
    Last Modified   : 13-01-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    CIS Control:    : 4.8
    CIS Windows 10 Stand-alone v3.0.0: 18.9.28.4 (L1)

.TESTED ON
    Date(s) Tested  : 13-01-2025
    Tested By       : Paul Miguel Nieuwendyk
    Systems Tested  : WIN 10
    PowerShell Ver. : 5.1.19041.5247

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\CIS_18.9.28.3_TurnOffLockScreenNotifications_Enabled.ps1
#>

# Define reg path and key
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System"
$registryKey = "AllowDomainPINLogon"

# Check if reg path exists, if not, create it.
if (-not(Test-Path -Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

# Set reg key
Set-ItemProperty -Path $registryPath -Name $registryKey -Value 0


Write-Host "'Turn on convenience PIN sign-in' is set to 'Disabled'"
