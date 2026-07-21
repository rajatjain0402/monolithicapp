module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  source = "../../modules/azurerm_virtual_network"
  vnets  = var.vnets

  depends_on = [module.resource_group]
}

module "subnets" {
  source  = "../../modules/azurerm_subnet"
  subnets = var.subnets

  depends_on = [module.resource_group, module.virtual_network]
}

module "public_ip" {
  source = "../../modules/azurerm_public_ip"
  pips   = var.pips

  depends_on = [module.resource_group]
}