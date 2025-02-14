locals {
  servicename        = "abracadabra"
  forum             = "abracadabramcit"
  lengthsa          = length(local.servicename)
  lengthforum       = length(local.forum)
  winterlistOfSports = ["icehockey", "snowboarding", "iceskating"]
  total_output      = ["150", "150", "150"]
  characters        = ["luke", "yoda", "darth"]
  enemies_destroyed = [4252, 900, 20000056894]

  character_enemy_map = { 
    for character in local.characters : character => local.enemies_destroyed
  }
}

#  Outputs pour afficher les valeurs des locals
output "servicename" {
  value = local.servicename
}

output "forum" {
  value = local.forum
}

output "length_of_servicename" {
  value = local.lengthsa
}

output "length_of_forum" {
  value = local.lengthforum
}

output "winter_sports" {
  value = local.winterlistOfSports
}

output "total_output" {
  value = local.total_output
}

output "character_enemy_mapping" {
  value = local.character_enemy_map
}
