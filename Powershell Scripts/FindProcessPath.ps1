#Process Location
function ValidPID {
    param(
        [string]$prompt = "Enter Process ID"
    )

    while ($true) {

        $procPID = Read-Host $prompt
        try {
            $IntprocID = [int]$procPID
            return $IntprocID
        }
        catch {
            Write-Host "Put only Process ID numbers"
        }

    }

}

$ProcessPID = ValidPID

Write-Host "Process ID is: $ProcessPID"

try {
    $process = Get-Process -id $ProcessPID -ErrorAction Stop
    $processPath = $process.MainModule.FileName
    Write-Output = "The path of the process $ProcessPID IS: $processPath" 
}
catch {
    Write-Host "Error Generated, Check your PID"
}