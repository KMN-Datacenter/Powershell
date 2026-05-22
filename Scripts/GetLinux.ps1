<#
.SYNOPSIS
  <Get Linux info from AD>
.DESCRIPTION
  <Simple script to list existing AD users and their UID, GID, home directory>
.OUTPUTS
  <List of users sAMAccountName, UID , GID, home directory>.log>
.NOTES
  Version:        1.0
  Author:         <JOR>
  Creation Date:  <20250825>
  Purpose/Change: Initial script  
#>


# Enable-PSRemoting -Force
# Enter account details for an elevated user
$Cred = Get-Credential
# Login to dc1
Enter-PSSession -ComputerName dc1 -Credential $Cred

Get-ADUser -Filter * -Properties * | select SamAccountName,uidNumber, gidnumber, unixHomeDirectory
