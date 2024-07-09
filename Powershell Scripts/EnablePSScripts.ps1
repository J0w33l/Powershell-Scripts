#Select Option Execution
function EnableScriptExecution {

     Set-ExecutionPolicy RemoteSigned
    
}


function DisableScriptExecution {

    Set-ExecutionPolicy Restricted
   
}

function EnablePsS_file{

    Write-Host "Please provide the path of the script to execute"
    $path = Read-Host

     # Execute the script with bypassing execution policy
    powershell.exe -ExecutionPolicy Bypass -File $path
   
}

function options {
    # Display menu options
Write-Host "Select an option:"
Write-Host "1. Enable PsScripts"
Write-Host "2. Disable PsScripts"
Write-Host "3. Enable PsScript for a specific script"

# Prompt user for input
$userChoice = Read-Host "Enter your choice (1-3):"

# Process user choice using switch statement
switch ($userChoice) {
    "1" {
        Write-Host "Enabling Powershell Scripts."
        EnableScriptExecution
    }
    "2" {
        Write-Host "Disable Powershell Scripts."
        DisableScriptExecution
    }
    "3" {
        Write-Host "Enable PsS in this session"
        EnablePsS_file
    }
    Default {
        Write-Host "Invalid choice. Please enter a number from 1 to 3."
    }
}
    
}

options