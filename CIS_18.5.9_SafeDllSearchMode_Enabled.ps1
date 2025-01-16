<#
.SYNOPSIS
    Ensure 'MSS: (SafeDllSearchMode) Enable Safe DLL search mode' is set to 'Enabled'

.NOTES
    Author          : Paul Miguel Nieuwendyk
    LinkedIn        : linkedin.com/in/paul-miguel-nieuwendyk/
    GitHub          : github.com/paulmiguelsec
    Date Created    : 16-01-2025
    Last Modified   : 16-01-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    CIS Control:    : 10.5
    CIS Windows 10 Stand-alone v3.0.0: 18.5.9 (L1)

.TESTED ON
    Date(s) Tested  : 16-01-2025
    Tested By       : Paul Miguel Nieuwendyk
    Systems Tested  : WIN 10
    PowerShell Ver. : 5.1.19041.5247

.USAGE
    PS C:\> .\CIS_18.5.9_SafeDllSearchMode_Enabled.ps1
#>

# Define reg path and key
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager"
$registryKey = "SafeDllSearchMode"

# Check if reg path exists, if not, create it.
if (-not(Test-Path -Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

# Set reg key
Set-ItemProperty -Path $registryPath -Name $registryKey -Value 1

Write-Host "'MSS: (SafeDllSearchMode) Enable Safe DLL search mode' is set to 'Enabled'"
