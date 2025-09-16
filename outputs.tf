output "bastion_public_ip" {
  description = "Publiczny adres IP bastiona"
  value       = google_compute_instance.ubuntu_bastion.network_interface[0].access_config[0].nat_ip
}

output "gke_cluster_name" {
  description = "Nazwa klastra GKE"
  value       = google_container_cluster.primary.name
}
