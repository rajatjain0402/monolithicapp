data "azurerm_subnet" "subnet" {


}






resource "azurerm_network_interface" "nic" {
    for_each = var.nics
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name

    ip_configuration {
    name                          = each.value.nic_ip_config_name
    subnet_id                     = 
    private_ip_address_allocation = "Dynamic"
  }
}