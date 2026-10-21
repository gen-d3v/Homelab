Set-Location (Join-Path $PSScriptRoot "..")

$targets = @{
    "1" = "proxmox_virtual_environment_vm.test_vm"
    "2" = "proxmox_virtual_environment_vm.debian-no-ui"
}

Write-Host "1. test_vm"
Write-Host "2. debian-no-ui"

$choice = Read-Host "Welke VM wil je plannen?"
if (-not $targets.ContainsKey($choice)) {
    throw "Ongeldige keuze."
}

$target = $targets[$choice]

tofu plan "-target=$target"
if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}

$confirm = Read-Host "VM aanmaken? Typ APPLY om door te gaan"
if ($confirm -ceq "APPLY") {
    tofu apply "-target=$target"
}