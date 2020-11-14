resource "aws_cloudwatch_metric_alarm" "cpu-utilization" {
  alarm_name          = "high-cpu-utilization-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "3"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "118"
  statistic           = "Average"
  threshold           = "85"
  alarm_description   = "cpu-utilization  70 %"
  alarm_actions       = ["${var.sns_topic}"]

  dimensions = {
    InstanceId = "${var.instance_id}"
  }
}

resource "aws_cloudwatch_metric_alarm" "instance-health-check" {
  alarm_name          = "instance-status-check"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "StatusCheckFailed"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "1"
  alarm_description   = "status check failed, server is not responding"
  alarm_actions       = ["${var.sns_topic}"]

  dimensions = {
    InstanceId = "${var.instance_id}"
  }
}
