variable "endpoint" {
    default = "http://a230323a41f2a4937950dd7f2d58908d-1508480474.ap-northeast-3.elb.amazonaws.com:9091/"
}

variable "username" {
    default = "admin"
}

variable "password" {
    default = "litmus"
}

variable "agent_name" {
    default = "demo-agent"
}

// We can get this project id from dashboad or "litmusctl get projects" command
variable "project_id" {
    default = "0014e75d-1db7-4de8-a4ef-0ec0b7846c64"
}

variable "namespace" {
    default = "litmus"
}
