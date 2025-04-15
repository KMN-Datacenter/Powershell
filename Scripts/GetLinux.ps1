<#
Script: GetLinux.ps1
Author: JOR
Purpose: Extract all users with linux properties
Date Created: 21/12/24
#>

Import-Module ActiveDirectory
$ExportPath="D:\Github\Users\WindowsExtracts\user_dump.csv"
Get-ADUser -Filter * -Properties * | select givenName,sn,SamAccountName,unixHomeDirectory,loginShell,uidNumber,gidnumber | Export-Csv -NoType $ExportPath
  