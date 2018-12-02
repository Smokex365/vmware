###WIP: Does not currently work###

#Get Output Type
#$export_type = Read-Host "Enter 1 to output in ISO format, 2 for Bundle (.zip) format"

#Get-EsxImageProfile -name "ESXi-6.0.*"
$profile_family = @("ESXi-6.0.0*", "ESXi-6.5.0*")
#some code to go through available profiles

#Specifies Export type, either "1" for ISO or "2" for Bundle (.zip)
$export_type = 1
#File output path; current directory
#$path = Get-Location

#$depot = Add-EsxSoftwareDepot -DepotUrl "https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml"

#Export-EsxImageProfile -ImageProfile “ESXi-6.0.0-2494585-standard” -ExportToBundle -FilePath "ESXi-6.0.0-2494585-standard.zip"
foreach ($i in $get_profile) {
    if ($script:export_type = 1) {
        Write-Host -f Green "Iso" 
        #Export-EsxImageProfile -ImageProfile "$($image.name)" -ExportToIso -FilePath "$path\$($image.name).iso"
    }
    elseif ($script:export_type = 2) {
        Write-Host -f Blue "Bundle"
        #Export-EsxImageProfile -ImageProfile "$($image.name)" -ExportToBundle -FilePath "$path\$($image.name).zip"
    }
    else {
        Write-Host -f Red "No Output Type Selected"
    }
}

#$depot | Remove-EsxSoftwareDepot
