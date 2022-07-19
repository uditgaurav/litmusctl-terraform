# Litmuctl Terraform


## Pre-requisite

- The litmusctl binary should alredy be present on the machine (is installed properly).

- The Chaos Center 2.6.0 is compatible with litmusctl v0.9.0

## Steps to run the terraform script:

- Replace all the variables from variable.tf file
- Run terraform init
- Run terraform apply --auto-approve

## Output

```

root@ip-172-31-55-75:~/litmusctl-terraform# terraform apply --auto-approve
null_resource.litmusctl-run: Refreshing state... [id=6641687831004644396]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with
the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # null_resource.litmusctl-run is tainted, so must be replaced
-/+ resource "null_resource" "litmusctl-run" {
      ~ id = "6641687831004644396" -> (known after apply)
    }

Plan: 1 to add, 0 to change, 1 to destroy.
null_resource.litmusctl-run: Destroying... [id=6641687831004644396]
null_resource.litmusctl-run: Destruction complete after 0s
null_resource.litmusctl-run: Creating...
null_resource.litmusctl-run: Provisioning with 'local-exec'...
null_resource.litmusctl-run (local-exec): Executing: ["/bin/sh" "-c" "litmusctl config set-account --endpoint=http://a230323a41f2a4937950dd7f2d58908d-1508480474.ap-northeast-3.elb.amazonaws.com:9091/ --username=admin --password=litmus"]
null_resource.litmusctl-run: Provisioning with 'local-exec'...
null_resource.litmusctl-run (local-exec): Executing: ["/bin/sh" "-c" "litmusctl create agent --agent-name=sc-pay --project-id=0014e75d-1db7-4de8-a4ef-0ec0b7846c64 --namespace=litmus --non-interactive"]

null_resource.litmusctl-run (local-exec): 🏃 Running prerequisites check....
null_resource.litmusctl-run (local-exec): 🔑 clusterrole ✅
null_resource.litmusctl-run (local-exec): 🔑 clusterrolebinding ✅
null_resource.litmusctl-run (local-exec): 🌟 Sufficient permissions. Installing the Agent...

null_resource.litmusctl-run (local-exec): 📌 Summary
null_resource.litmusctl-run (local-exec): Agent Name: sc-pay
null_resource.litmusctl-run (local-exec): Agent Description: ---
null_resource.litmusctl-run (local-exec): Agent SSL/TLS Skip: false
null_resource.litmusctl-run (local-exec): Platform Name: Others
null_resource.litmusctl-run (local-exec): Namespace:  litmus (new)
null_resource.litmusctl-run (local-exec): Service Account:  litmus (new)

null_resource.litmusctl-run (local-exec): Installation Mode: cluster
null_resource.litmusctl-run (local-exec): Applying YAML:
null_resource.litmusctl-run (local-exec): http://a230323a41f2a4937950dd7f2d58908d-1508480474.ap-northeast-3.elb.amazonaws.com:9091//api/file/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbHVzdGVyX2lkIjoiMDhiN2MxNzgtMjJhOC00YTcxLTgxYTAtOWM0ZjZkYjYwYzVjIn0.zWBxUhd0KE-1ZlD1u5sRXTjvNXIs45vwyIOq48KCrR8.yaml

null_resource.litmusctl-run (local-exec): namespace/litmus created
null_resource.litmusctl-run (local-exec): serviceaccount/litmus created
null_resource.litmusctl-run (local-exec): customresourcedefinition.apiextensions.k8s.io/clusterworkflowtemplates.argoproj.io created
null_resource.litmusctl-run (local-exec): customresourcedefinition.apiextensions.k8s.io/cronworkflows.argoproj.io created
null_resource.litmusctl-run (local-exec): customresourcedefinition.apiextensions.k8s.io/workflows.argoproj.io created
null_resource.litmusctl-run (local-exec): customresourcedefinition.apiextensions.k8s.io/workflowtemplates.argoproj.io created
null_resource.litmusctl-run (local-exec): customresourcedefinition.apiextensions.k8s.io/workflowtasksets.argoproj.io created
null_resource.litmusctl-run (local-exec): serviceaccount/argo created
null_resource.litmusctl-run (local-exec): clusterrole.rbac.authorization.k8s.io/argo-cluster-role created
null_resource.litmusctl-run (local-exec): clusterrolebinding.rbac.authorization.k8s.io/argo-binding created
null_resource.litmusctl-run (local-exec): configmap/workflow-controller-configmap created
null_resource.litmusctl-run (local-exec): service/workflow-controller-metrics created
null_resource.litmusctl-run (local-exec): deployment.apps/workflow-controller created
null_resource.litmusctl-run (local-exec): customresourcedefinition.apiextensions.k8s.io/chaosengines.litmuschaos.io created
null_resource.litmusctl-run (local-exec): customresourcedefinition.apiextensions.k8s.io/chaosexperiments.litmuschaos.io created
null_resource.litmusctl-run (local-exec): customresourcedefinition.apiextensions.k8s.io/chaosresults.litmuschaos.io created
null_resource.litmusctl-run (local-exec): customresourcedefinition.apiextensions.k8s.io/eventtrackerpolicies.eventtracker.litmuschaos.io created
null_resource.litmusctl-run (local-exec): serviceaccount/litmus-cluster-scope created
null_resource.litmusctl-run (local-exec): clusterrole.rbac.authorization.k8s.io/litmus-cluster-scope created
null_resource.litmusctl-run (local-exec): clusterrolebinding.rbac.authorization.k8s.io/litmus-cluster-scope created
null_resource.litmusctl-run (local-exec): deployment.apps/chaos-operator-ce created
null_resource.litmusctl-run (local-exec): deployment.apps/chaos-exporter created
null_resource.litmusctl-run (local-exec): service/chaos-exporter created
null_resource.litmusctl-run (local-exec): serviceaccount/litmus-admin created
null_resource.litmusctl-run (local-exec): clusterrole.rbac.authorization.k8s.io/litmus-admin created
null_resource.litmusctl-run (local-exec): clusterrolebinding.rbac.authorization.k8s.io/litmus-admin created
null_resource.litmusctl-run (local-exec): serviceaccount/argo-chaos created
null_resource.litmusctl-run (local-exec): clusterrole.rbac.authorization.k8s.io/chaos-cluster-role created
null_resource.litmusctl-run (local-exec): clusterrolebinding.rbac.authorization.k8s.io/chaos-cluster-role-binding created
null_resource.litmusctl-run (local-exec): clusterrole.rbac.authorization.k8s.io/subscriber-cluster-role created
null_resource.litmusctl-run (local-exec): clusterrolebinding.rbac.authorization.k8s.io/subscriber-cluster-role-binding created
null_resource.litmusctl-run (local-exec): serviceaccount/event-tracker-sa created
null_resource.litmusctl-run (local-exec): clusterrole.rbac.authorization.k8s.io/event-tracker-cluster-role created
null_resource.litmusctl-run (local-exec): clusterrolebinding.rbac.authorization.k8s.io/event-tracker-clusterole-binding created
null_resource.litmusctl-run (local-exec): configmap/agent-config created
null_resource.litmusctl-run (local-exec): secret/agent-secret created
null_resource.litmusctl-run (local-exec): deployment.apps/subscriber created
null_resource.litmusctl-run (local-exec): deployment.apps/event-tracker created
null_resource.litmusctl-run (local-exec): 💡 Connecting agent to ChaosCenter.
null_resource.litmusctl-run (local-exec): 💡 Connecting agent to ChaosCenter.
null_resource.litmusctl-run (local-exec): 💡 Connecting agent to ChaosCenter.
null_resource.litmusctl-run: Still creating... [10s elapsed]
null_resource.litmusctl-run: Still creating... [20s elapsed]
null_resource.litmusctl-run (local-exec): 💡 Connecting agent to ChaosCenter.
null_resource.litmusctl-run (local-exec): 🏃 Agents are running!!

null_resource.litmusctl-run (local-exec): 🚀 Agent Connection Successful!! 🎉
null_resource.litmusctl-run (local-exec): 👉 Litmus agents can be accessed here: http://a230323a41f2a4937950dd7f2d58908d-1508480474.ap-northeast-3.elb.amazonaws.com:9091//targets
null_resource.litmusctl-run: Creation complete after 24s [id=2710115067128724087]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

```