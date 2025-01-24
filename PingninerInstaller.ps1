New-Item -ItemType Directory -Force -Path "C:\Program Files\Pingniner";

$key=$args[0]
$type=$args[1]


$cpuArch = (Get-WmiObject -Class Win32_Processor).Architecture

if ($cpuArch -eq 9) {
	Write-Host "Installing for x64"
	Invoke-WebRequest -Uri https://github.com/pingniner/agent/releases/latest/download/node-win-x64.exe -OutFile "C:\Program Files\Pingniner\node.exe" -UseBasicParsing;
} elseif ($cpuArch -eq 5) {
	Write-Host "Installing for ARM64"
	Invoke-WebRequest -Uri https://github.com/pingniner/agent/releases/latest/download/node-win-arm64.exe -OutFile "C:\Program Files\Pingniner\node.exe" -UseBasicParsing;
} else {
	throw "Unsupported CPU architecture"
}


Invoke-WebRequest -Uri https://github.com/pingniner/agent/releases/latest/download/agent.js -OutFile "C:\Program Files\Pingniner\agent.js" -UseBasicParsing;

& "C:\Program Files\Pingniner\node.exe" "C:\Program Files\Pingniner\agent.js" init $key $type