# PoliceyAgent
## Description 
PowerShell Tooling to enable the bulk setting and unsetting of registry settings

**THIS AGENT IS IN EARLY DEVELOPMENT AND NOT READY FOR USE!**

## Currently supported operating systems.
 - Windows

## Folders
| Folder                        | Use                                                                                   |
|-------------------------------|---------------------------------------------------------------------------------------|
| .\Windows\                    | The root for the Windows agent                                                        |
| .\Windows\PolicyAgent.ps1     | The tools execution entrty point                                                      |
| .\Windows\PolicyAgent.conf    | Contains a list of the IDs/GUIDs of the policies to be applied. "#..." means disabled |
| .\Windows\Policies/*.psd1     | The Policies filder contains psd1 files each containing 1, and only 1 policy.         |

## Version History
| Version   | Release Date | Branch | Publisher |
|-----------|--------------|--------|-----------|
| 0.0.0.1   | 2026-Feb-27  | Main   | J Mizzi   |

## Execution instructions
**THIS AGENT IS IN EARLY DEVELOPMENT AND NOT READY FOR USE!**
```Powershell
cd .\Windows
. .\PolicyAgent.ps1
$PA = [PolicyAgent]::New(.\Windows\PolicyAgent.conf)
if( $PA.Validate() ){ $PA.Apply() }
```
