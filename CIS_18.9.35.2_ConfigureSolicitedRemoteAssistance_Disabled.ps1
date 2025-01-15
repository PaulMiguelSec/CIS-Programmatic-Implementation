<#
.SYNOPSIS
    Ensure 'Configure Solicited Remote Assistance' is set to 'Disabled'

.NOTES
    Author          : Paul Miguel Nieuwendyk
    LinkedIn        : linkedin.com/in/paul-miguel-nieuwendyk/
    GitHub          : github.com/paulmiguelsec
    Date Created    : 15-01-2025
    Last Modified   : 15-01-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    CIS Control:    : 4.8
    CIS Windows 10 Stand-alone v3.0.0: 18.9.35.2 (L1)

.TESTED ON
    Date(s) Tested  : 15-01-2025
    Tested By       : Paul Miguel Nieuwendyk
    Systems Tested  : WIN 10
    PowerShell Ver. : 5.1.19041.5247

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\CIS_18.9.35.2_ConfigureSolicitedRemoteAssistance_Disabled.ps1
#>

# Define reg path and key
$registryPath = "HKLM:\Software\policies\Microsoft\Windows NT\Terminal Services"
$registryKey = "fAllowToGetHelp"

# Check if reg path exists, if not, create it.
if (-not(Test-Path -Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

# Set reg key
Set-ItemProperty -Path $registryPath -Name $registryKey -Value 0


Write-Host "'Configure Solicited Remote Assistance' is set to 'Disabled'"
