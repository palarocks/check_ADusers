echo "Check if users are Domain Admin"
foreach($line in Get-Content .\users.txt) {
    [bool]$IsDomainAdmin = (Get-ADUser $line -Properties memberof).memberof -contains (Get-ADGroup "Domain Admins") 
    echo "$line: $IsDomainAdmin"
}