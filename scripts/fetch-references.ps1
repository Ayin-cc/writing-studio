# 从 jtydhr88/screenwriting-skills 按固定版本下载 reference*.md 到 references/library/screenwriting/，
# 并用 scripts/screenwriting-references.sha256 校验。这些文件含书籍摘录，不随本仓库分发，见该目录 SOURCE.md。
$ErrorActionPreference = 'Stop'

$Repo = 'jtydhr88/screenwriting-skills'
$Commit = '51115f18d160aa8b2ac5813e4432b6f0b425358f'
$Base = "https://raw.githubusercontent.com/$Repo/$Commit/plugins/screenwriting/skills"

$Root = Split-Path -Parent $PSScriptRoot
$Manifest = Join-Path $Root 'scripts/screenwriting-references.sha256'
$Dest = Join-Path $Root 'references/library/screenwriting'

$ok = 0; $failed = 0
foreach ($line in Get-Content $Manifest) {
    if (-not $line.Trim()) { continue }
    $sum, $path = $line -split '\s+', 2
    $out = Join-Path $Dest $path
    if ((Test-Path $out) -and (Get-FileHash $out -Algorithm SHA256).Hash -eq $sum) { $ok++; continue }
    New-Item -ItemType Directory -Force (Split-Path -Parent $out) | Out-Null
    $part = "$out.part"
    try {
        Invoke-WebRequest -Uri "$Base/$path" -OutFile $part -UseBasicParsing
        if ((Get-FileHash $part -Algorithm SHA256).Hash -ne $sum) { throw '校验不一致' }
        Move-Item -Force $part $out; $ok++
    } catch {
        Remove-Item -Force -ErrorAction SilentlyContinue $part
        Write-Warning "失败：$path（$_）"; $failed++
    }
}

Write-Host "完成：$ok 个文件就绪，$failed 个失败（来源 $Repo@$($Commit.Substring(0, 12))）"
if ($failed -gt 0) { exit 1 }
