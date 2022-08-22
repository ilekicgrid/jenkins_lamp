output "web_public_ip" {
  description = "The public IP address of the web server"
  // We are grabbing it from the Elastic IP
  value       = aws_eip.tutorial_web_eip[0].public_ip

  // This output waits for the Elastic IPs to be created and distributed
  depends_on = [aws_eip.tutorial_web_eip]
}