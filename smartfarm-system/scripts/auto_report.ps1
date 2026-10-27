$sourceFile = "../data/log-he-thong.log"
$destFile = "../backup/bao-cao-su-co.txt"

$header = "--- BAO CAO SU CO HE THONG ---`nThoi gian lay bao cao: $(Get-Date)`n"
Write-Output $header > $destFile

Get-Content $sourceFile | Select-String -Pattern "CRITICAL", "ERROR" >> $destFile

Write-Output "Da tao bao cao thanh cong tai: $destFile"
