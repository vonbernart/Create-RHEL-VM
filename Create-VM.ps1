update-help -Force

Get-Help New-VM -Examples

$Credential=Get-Credential
$VM="Test-VM-Hyper-V"
$MSB="1GB"
$NVP="\\DC01\data-e\vms\Test-VN\Test-M.vhdx"
$NVSB="30GB"
New-VM -Name "Test-VM-Hyper-V" -MemoryStartupBytes 1GB -NewVHDPath d:\vms\Test-M.vhdx -NewVHDSizeBytes 30GB -Dynamic
-BootDevice CD -SwitchName 

Set-VMDvdDrive -VMName DC -ControllerNumber 1 -Path "<path to ISO>

# Start-VM -Name "Test-VM-Hyper-V"

# Get-VM -Name "Test-VM-Hyper-V"

# Stop-VM -Name "Test-VM-Hyper-V" -Force

# Remove-VM -Name "Test-VM-Hyper-V" -Force

# Get-VM

# Remove-Item -Path D:\VMS\Test-M.vhdx -Force

