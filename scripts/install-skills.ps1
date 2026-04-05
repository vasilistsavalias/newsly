param(
    [ValidateSet("Local", "Global", "Custom")]
    [string]$Mode = "Local",
    [string]$Destination
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$sourceRoot = Join-Path $repoRoot "ai_news_skills"
$skillNames = @(
    "get_news",
    "ai_news",
    "fetch_academia",
    "fetch_industry",
    "fetch_viral",
    "synthesize_week",
    "synthesize_monthly"
)

switch ($Mode) {
    "Local" {
        $targetRoot = Join-Path $repoRoot ".codex\\skills"
    }
    "Global" {
        $targetRoot = Join-Path $HOME ".codex\\skills"
    }
    "Custom" {
        if (-not $Destination) {
            throw "Custom mode requires -Destination."
        }
        $targetRoot = $Destination
    }
}

New-Item -ItemType Directory -Force -Path $targetRoot | Out-Null

foreach ($skillName in $skillNames) {
    $sourcePath = Join-Path $sourceRoot $skillName
    $targetPath = Join-Path $targetRoot $skillName

    if (-not (Test-Path $sourcePath)) {
        throw "Missing source skill folder: $sourcePath"
    }

    Copy-Item -Recurse -Force $sourcePath $targetPath
    Write-Host "Installed $skillName -> $targetPath"
}

Write-Host "Install complete. Mode: $Mode"
