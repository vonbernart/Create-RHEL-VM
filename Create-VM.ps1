update-help -Force

Get-Help New-VM -Examples

$VM="Test-VM-Hyper-V"

New-VM -Name "Test-VM-Hyper-V" -MemoryStartupBytes 1GB -NewVHDPath d:\vms\Test-M.vhdx -NewVHDSizeBytes 30GB

Start-VM -Name "Test-VM-Hyper-V"

Get-VM -Name "Test-VM-Hyper-V"