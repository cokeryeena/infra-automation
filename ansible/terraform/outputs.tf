output "web_public_ip" {
  value = aws_instance.web.public_ip
}

output "db_public_ip" {
  value = aws_instance.db.public_ip
}

output "monitor_public_ip" {
  value = aws_instance.monitor.public_ip
}
