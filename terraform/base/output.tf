output "host_ip" {
  value = "${aws_instance.web.public_ip}"
}

output "aws_instance_id" {
  value = "${aws_instance.web.id}"
}

output "alb_dns_name" {
  value = "${aws_lb.load_balancer.dns_name}"
}

output "alb_zone_id" {
  value = "${aws_lb.load_balancer.zone_id}"
}

output "alb_listener_arn" {
  value = "${aws_lb_listener.alb_listener.arn}"
}

output "stream_arn" {
  value = "${aws_kinesis_stream.rabblerouser_stream.arn}"
}

output "archive_bucket_arn" {
  value = "${aws_s3_bucket.event_archive_bucket.arn}"
}

output "stream_name" {
  value = "${aws_kinesis_stream.rabblerouser_stream.name}"
}

output "archive_bucket_name" {
  value = "${aws_s3_bucket.event_archive_bucket.bucket}"
}

output "mail_bucket_arn" {
  value = "${module.group_mail_receiver.mail_bucket_arn}"
}

output "mail_bucket_name" {
  value = "${module.group_mail_receiver.mail_bucket_name}"
}

output "docker_api_key" {
  value = "${tls_private_key.docker_key.private_key_pem}"
}

output "docker_api_ca" {
  value = "${tls_self_signed_cert.docker_ca.cert_pem}"
}

output "docker_api_cert" {
  value = "${tls_locally_signed_cert.docker_cert.cert_pem}"
}

output "group_mail_receiver_auth_token" {
  value = "${module.group_mail_receiver.auth_token}"
}
