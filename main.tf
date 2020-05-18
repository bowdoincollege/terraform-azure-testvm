provider "azurerm" {
  version = "~> 2.0"
  features {}
}

provider "random" {
  version = "~> 2.2"
}

resource "random_password" "vmpw" {
  count  = var.enable ? 1 : 0
  length = 16
}

resource "azurerm_network_interface" "nic" {
  count               = var.enable ? 1 : 0
  name                = var.testvm_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "${var.testvm_name}-nic"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "vm" {
  count                            = var.enable ? 1 : 0
  name                             = var.testvm_name
  location                         = var.location
  resource_group_name              = var.resource_group_name
  network_interface_ids            = [azurerm_network_interface.nic[0].id]
  vm_size                          = "Standard_B1s"
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "${var.testvm_name}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"
  }
  os_profile {
    computer_name  = var.testvm_name
    admin_username = var.admin_user
    admin_password = random_password.vmpw[0].result
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}
