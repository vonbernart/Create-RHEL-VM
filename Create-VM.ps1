update-help -Force

Get-Help New-VM -Examples

$Credential=Get-Credential
$VM="Test-VM-Hyper-V"
$MSB="1GB"
$NVP="\\DC01\data-e\vms\Test-VN\Test-M.vhdx"
$NVSB="30GB"
$Switch="Extern"
$PathISO="\\DC01\Data-E\ISO\AlmaLinux-8.iso"
$VMServer="hv-lt-01"
New-VM -Name $VM -MemoryStartupBytes $MSB -NewVHDPath $NVP -NewVHDSizeBytes $NVSB -Dynamic 
-SwitchName $Switch -Credential $Credential -ComputerName $VMServer

Set-VMDvdDrive -VMName DC -ControllerNumber 3 -Path $PathISO

Start-VM -Name "Test-VM-Hyper-V"

# Get-VM -Name "Test-VM-Hyper-V"

# Stop-VM -Name "Test-VM-Hyper-V" -Force

# Remove-VM -Name "Test-VM-Hyper-V" -Force

# Get-VM

# Remove-Item -Path D:\VMS\Test-M.vhdx -Force

