<#
.SYNOPSIS
    This PowerShell script ensures 'Disallow Autoplay for non-volume devices' is set to 'Enabled'

.NOTES
    Author          : Paul Miguel Nieuwendyk
    LinkedIn        : linkedin.com/in/paul-miguel-nieuwendyk/
    GitHub          : github.com/paulmiguelsec
    Date Created    : 13-01-2025
    Last Modified   : 13-01-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    CIS Control:    : 10.3
    CIS Windows 10 Stand-alone v3.0.0: 18.10.7.1 (L1)


.USAGE
    PS C:\> .\CIS_18.10.7.1.1_DisallowAutoplay.ps1 
#>

# Define reg path and key
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
$registryKey = "NoAutoplayfornonVolume"

# Check if reg path exists, if not, create it.
if (-not(Test-Path -Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

# Set reg key
Set-ItemProperty -Path $registryPath -Name $registryKey -Value 1


Write-Host "The setting 'Disallow Autoplay for non-volume devices' has been enabled."
