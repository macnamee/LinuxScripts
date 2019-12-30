#!/snap/bin/pwsh -Command

Write-Host "Powershell on Linux"

$PotPrefix = "--potfile-path="


$WorkingPath = "/hashcat-5.1.0"
Set-Location -Path $WorkingPath


$PotPath   = "/mnt/P/Pots"
$HashFile  = "/mnt/P/LeftHashes/LinuxPWSH_Test/test.txt"
$PotFile   = "LX_MGPU06.pot"

$HashType  = "1000"


 Get-ChildItem $WordlistPath -Recurse -Filter *.txt |
    Foreach-Object {
#        ShowBanner -script "HC2"
        Write-Host  -ForegroundColor Green "=== HC_2_CuratedFiles ========================================================"
        Write-Host  -ForegroundColor Green "HashFile     : " $HashFile
        Write-Host  -ForegroundColor Green "WordlistPath : " $WordlistPath
        Write-Host  -ForegroundColor Green "PotFile      : " $PotFile
        Write-Host  -ForegroundColor Green "FullName     : " $_.FullName
        Write-Host  -ForegroundColor Green "HashType     : " $HashType
        Get-Date -format "HH:mm:ss"
        Write-Host  -ForegroundColor Green "=============================================================================="
#        Write-Log -Script $MyInvocation.MyCommand.Name -Hashfile $HashFile -PotFile $PotFile -WordlistPath $WordlistPath -Message "Filename=$_" -LogFilePathAndFilename $LogFileName
        ./hashcat64.bin -m $HashType -a 0 -w 3 --remove $PotPrefix$PotFile $HashFile $_.FullName
    }