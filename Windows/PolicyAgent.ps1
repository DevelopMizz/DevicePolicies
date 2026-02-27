[System.IO.Directory]::SetCurrentDirectory((Get-Location).Path)
$Policies = @()
Get-ChildItem -Path .\Policies | select Name | Foreach{
    $Policies += [PsCustomObject](Import-PowerShellDataFile -Path (".\Policies\"+$_.Name))
}

Class PolicyAgent {
    $ConfigurationFile
    $ApplicablePolicies
    PolicyAgent($ConfigurationFilePath){
        [System.IO.Directory]::SetCurrentDirectory((Get-Location).Path)
        if(Test-Path -Path $ConfigurationFilePath){
            $this.ConfigurationFile = [System.IO.FileInfo]::new($ConfigurationFilePath)
            if(
                $this.ConfigurationFile.Exists -and
                ($this.ConfigurationFile.Extension -eq "conf")
            ){
                $This.ApplicablePolicies = Get-Content -Path $ConfigurationFilePath -Raw
            }elseif(-not ($this.ConfigurationFile.Extension -eq "conf")){
                throw [System.IO.FileFormatException]::new("The input file must be a .conf file")
            }elseif($this.ConfigurationFile.Exists){
                throw [System.IO.FileNotFoundException]::new("Could not locate $ConfigurationFilePath")
            }
        }else{
            throw [System.IO.FileNotFoundException]::new("Could not read orlocate $ConfigurationFilePath")
        }
    }
    [Boolean]Validate(){
    
        return $true
    }
    [void]Apply(){
    
    }
}
