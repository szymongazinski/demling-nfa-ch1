param([switch]$Otworz)

$ErrorActionPreference = 'Stop'
$projectRoot = $PSScriptRoot
$repoRoot = Split-Path -Parent $projectRoot
$latexDir = Join-Path $projectRoot 'latex'
$buildDir = Join-Path $projectRoot 'build'
$destination = Join-Path $repoRoot 'Demling-NFA-ch1.pdf'
$null = Get-Command pdflatex -ErrorAction Stop
$null = New-Item -ItemType Directory -Path $buildDir -Force

Push-Location $latexDir
try {
    foreach ($pass in 1..3) {
        $consoleLog = Join-Path $buildDir ('main-pass-' + $pass + '.console.log')
        & pdflatex -interaction=nonstopmode -halt-on-error -file-line-error "-output-directory=$buildDir" main.tex *> $consoleLog
        if ($LASTEXITCODE -ne 0) {
            Get-Content -LiteralPath $consoleLog -Tail 30 | Write-Host
            throw 'Kompilacja nie powiodla sie. Poprzedni PDF pozostaje zachowany.'
        }
    }
    $logPath = Join-Path $buildDir 'main.log'
    $latexLog = Get-Content -LiteralPath $logPath -Raw
    if ($latexLog -match 'There were undefined references|Rerun to get cross-references right|Label\(s\) may have changed|Overfull \\[hv]box|destination with the same identifier|Missing character:') {
        throw "PDF wymaga sprawdzenia. Zobacz $logPath."
    }
} finally {
    Pop-Location
}

Copy-Item -LiteralPath (Join-Path $buildDir 'main.pdf') -Destination $destination -Force
Write-Host "Najnowszy PDF: $destination"
if ($Otworz) {
    Invoke-Item -LiteralPath $destination
}
