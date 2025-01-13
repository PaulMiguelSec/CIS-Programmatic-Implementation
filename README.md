# CIS Microsoft Windows 10 Stand-alone v3.0.0 - Programmatic Remediations

This repository contains PowerShell scripts designed to programmatically implement specific remediations from the **CIS Microsoft Windows 10 Stand-alone Benchmark v3.0.0**. These scripts automate the application of recommended security settings to ensure compliance with the CIS benchmark guidelines.

## Repository Overview

Each script corresponds to a specific CIS control and is designed to implement the recommended configuration securely and efficiently. Below is a list of the implemented remediations:

### Implemented Controls

**CIS 18.7.1** - Disable Allow Print Spooler Connections  
   [`CIS_18.7.1_AllowPrintSpoolerConnections_Disabled.ps1`](https://github.com/PaulMiguelSec/CIS-Programmatic-Implementation/blob/main/CIS_18.7.1_AllowPrintSpoolerConnections_Disabled.ps1)

**CIS 18.7.10** - Configure Point and Print Restrictions: New Connection Warning and Elevation  
   [`CIS_18.7.10_PointAndPrint_NewConnection_WarningAndElevation.ps1`](https://github.com/PaulMiguelSec/CIS-Programmatic-Implementation/blob/main/CIS_18.7.10_PointAndPrint_NewConnection_WarningAndElevation.ps1)

**CIS 18.7.11** - Configure Point and Print Restrictions: Update Connection Warning and Elevation  
   [`CIS_18.7.11_PointAndPrint_UpdateConnection_WarningAndElevation.ps1`](https://github.com/PaulMiguelSec/CIS-Programmatic-Implementation/blob/main/CIS_18.7.11_PointAndPrint_UpdateConnection_WarningAndElevation.ps1)

**CIS 18.9.28.1** - Block Account Details on Sign-In Screen  
   [`CIS_18.9.28.1_BlockAccountDetailsSignIn_Enabled.ps1`](https://github.com/PaulMiguelSec/CIS-Programmatic-Implementation/blob/main/CIS_18.9.28.1_BlockAccountDetailsSignIn_Enabled.ps1)

**CIS 18.9.28.2** - Hide Network Selection UI on Lock Screen  
   [`CIS_18.9.28.2_HideNetworkSelectionUI_Enabled.ps1`](https://github.com/PaulMiguelSec/CIS-Programmatic-Implementation/blob/main/CIS_18.9.28.2_HideNetworkSelectionUI_Enabled.ps1)

**CIS 18.9.28.3** - Turn Off Lock Screen Notifications  
   [`CIS_18.9.28.3_TurnOffLockScreenNotifications_Enabled.ps1`](https://github.com/PaulMiguelSec/CIS-Programmatic-Implementation/blob/main/CIS_18.9.28.3_TurnOffLockScreenNotifications_Enabled.ps1)

**CIS 18.9.28.4** - Disable Convenience PIN Sign-In  
   [`CIS_18.9.28.4_ConveniencePINSignIn_Disabled.ps1`](https://github.com/PaulMiguelSec/CIS-Programmatic-Implementation/blob/main/CIS_18.9.28.4_ConveniencePINSignIn_Disabled.ps1)

**CIS 18.10.7.1** - Disallow Autoplay  
   [`CIS_18.10.7.1_DisallowAutoplay.ps1`](https://github.com/PaulMiguelSec/CIS-Programmatic-Implementation/blob/main/CIS_18.10.7.1_DisallowAutoplay.ps1)

**CIS 18.10.56.3.9.1** - Always Prompt for Password on Secure Desktop  
   [`CIS_18.10.56.3.9.1_AlwaysPromptPassword_Enabled.ps1`](https://github.com/PaulMiguelSec/CIS-Programmatic-Implementation/blob/main/CIS_18.10.56.3.9.1_AlwaysPromptPassword_Enabled.ps1)

**CIS 18.10.56.3.11.1** - Do Not Delete Temp Folders Upon Exit  
    [`CIS_18.10.56.3.11.1_DoNotDeleteTempFolders_Disabled.ps1`](https://github.com/PaulMiguelSec/CIS-Programmatic-Implementation/blob/main/CIS_18.10.56.3.11.1_DoNotDeleteTempFolders_Disabled.ps1)

## References

- [CIS Microsoft Windows 10 Benchmark v3.0.0](https://www.cisecurity.org/benchmark/microsoft_windows_10)

