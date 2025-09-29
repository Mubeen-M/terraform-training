
// For listing all the groups present in a account 
/*data "akamai_groups" "my_groups" {
}

output "my_groups" {
  value = data.akamai_groups.my_groups
} */

// For listing the group ID of the mentioned group name and contract ID
/*data "akamai_group" "my_group_id" {
    group_name  = "mmogalai"
    contract_id = "ctr_C-1IE2OHM"
}

output "my_group_id" {
    value = data.akamai_group.my_group_id
}*/

//For listing all the contracts present in a account 
/*data "akamai_contracts" "my_contracts" {
}

output "my_contracts" {
  value = data.akamai_contracts.my_contracts
}*/

// Get the contract ID of the mentioned group
/*data "akamai_contract" "my_contract" {
     group_name = "mmogalai"
}

output "my_contract" {
    value = data.akamai_contract.my_contract
}*/

// List all properties present in the given group and contract ID
/*data "akamai_properties" "my_properties" {
    group_id    = "12345"
    contract_id = "C-0N7RAC7"
}

output "my_properties" {
  value = data.akamai_properties.my_properties
}*/

// Show the config of a single property (I am printing only property Id, this data.akamai_property.my_property will print the complete config)
/*data "akamai_property" "my_property" {
    name = "Time_Ltd_PM"
}

output "my_property" {
  value = data.akamai_property.my_property.id
}*/

// Details about a single sec configuration
/*data akamai_appsec_configuration my_sec_config{
   name = "mmogalai_testing"
}

output "my_sec_configs" {
  value = data.akamai_appsec_configuration.my_sec_config
}*/


////////// Data Source Exercise //////////////

data "akamai_group" "my_group_id"{
    group_name = "mmogalai"
    contract_id = "ctr_C-1IE2OHM"
}

output "my_group_name" {
  value = data.akamai_group.my_group_id.group_name
}

output "my_group_id" {
  value = data.akamai_group.my_group_id.id
}

data "akamai_property" "my_property"{
    name = "Time_Ltd_PM"
}

output "my_property_name" {
  value = data.akamai_property.my_property.name
}

output "my_property_id" {
  value = data.akamai_property.my_property.id
}

data "akamai_appsec_configuration" "my_sec_config"{
    name = "mmogalai_testing"
}

output "my_sec_config_name" {
  value = data.akamai_appsec_configuration.my_sec_config.name
}

output "my_sec_config_id" {
  value = data.akamai_appsec_configuration.my_sec_config.id
}
