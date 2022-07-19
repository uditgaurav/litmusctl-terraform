terraform {
  required_version = "> 0.8.0"
}

resource "null_resource" "litmusctl-run" {

 provisioner "local-exec" {
    command = "litmusctl config set-account --endpoint=${var.endpoint} --username=${var.username} --password=${var.password}"
  }

 provisioner "local-exec" {
    command = "litmusctl create agent --agent-name=${var.agent_name} --project-id=${var.project_id} --namespace=${var.namespace} --non-interactive"
  }
  
}
