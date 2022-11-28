output "vms_info" {
  value = [
    for vm in module.vm :
    {
      vm_name     = vm.vm_name,
      vm_username = vm.vm_username,
      vm_ip       = vm.vm_ip
    }
  ]
}


