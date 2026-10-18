param([switch]$Otworz)

$ErrorActionPreference = 'Stop'
$projectRoot = $PSScriptRoot
$repoRoot = Split-Path -Parent $projectRoot
$latexDir = Join-Path $projectRoot 'latex'
$buildDir = Join-Path $projectRoot 'build'
$null = Get-Command pdflatex -ErrorAction Stop
$null = New-Item -ItemType Directory -Path $buildDir -Force
$variants = @(
    @{ Source = 'main.tex'; Base = 'main'; Output = 'Demling-NFA-ch1.pdf' },
    @{ Source = 'main-wyklady.tex'; Base = 'main-wyklady'; Output = 'Demling-NFA-ch1-wyklady.pdf' }
)

Push-Location $latexDir
try {
    foreach ($variant in $variants) {
        foreach ($pass in 1..3) {
            $consoleLog = Join-Path $buildDir ($variant.Base + '-pass-' + $pass + '.console.log')
            & pdflatex -interaction=nonstopmode -halt-on-error -file-line-error "-output-directory=$buildDir" $variant.Source *> $consoleLog
            if ($LASTEXITCODE -ne 0) {
                Get-Content -LiteralPath $consoleLog -Tail 30 | Write-Host
                throw "Kompilacja $($variant.Source) nie powiodla sie. Poprzednie PDF-y pozostaja zachowane."
            }
        }
        $logPath = Join-Path $buildDir ($variant.Base + '.log')
        $latexLog = Get-Content -LiteralPath $logPath -Raw
        if ($latexLog -match 'There were undefined references|Rerun to get cross-references right|Label\(s\) may have changed|Overfull \\[hv]box|destination with the same identifier|Missing character:') {
            throw "PDF wymaga sprawdzenia. Zobacz $logPath."
        }
    }
} finally {
    Pop-Location
}

# Publikujemy oba PDF-y dopiero po poprawnym zbudowaniu obu wariantow.
foreach ($variant in $variants) {
    $destination = Join-Path $repoRoot $variant.Output
    Copy-Item -LiteralPath (Join-Path $buildDir ($variant.Base + '.pdf')) -Destination $destination -Force
    Write-Host "Najnowszy PDF: $destination"
}

if ($Otworz) {
    foreach ($variant in $variants) {
        Invoke-Item -LiteralPath (Join-Path $repoRoot $variant.Output)
    }
}
