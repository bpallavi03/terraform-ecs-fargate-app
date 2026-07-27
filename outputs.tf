output "alb_dns_name" {
  value       = aws_lb.main.dns_name
  description = "Public URL of the load balancer"
}