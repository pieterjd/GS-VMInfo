#install hyperv module according to http://pshyperv.codeplex.com/discussions/344783 (last post)
import-module hyperv 
#alle diskinfo
Get-VM 'agr-srv-ccm' -Server 'agr-srv-t530','agr-srv-t730' | Get-VMDisk 
#enkel physical path
Get-VM 'agr-srv-ccm' -Server 'agr-srv-t530','agr-srv-t730' | Get-VMDisk | select VMElementName,DiskPath