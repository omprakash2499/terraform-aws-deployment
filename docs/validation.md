# Terraform deployment verification

- Terraform initialization completed successfully.
- Plan: 12 additions, no changes or deletions.
- Apply: 12 resources added successfully.
- EC2 appeared Online in Systems Manager.
- An interactive Systems Manager session connected successfully.
- Host setup completion marker was present.
- Docker service was active; client and server responded.

Jenkins build #4 deployed the application from ECR by digest through Systems Manager.
The EC2 container was healthy; API health, incident creation and listing passed.

## Cleanup verified

After deleting the project ECR image manifests, the saved Terraform destroy plan
completed: **0 added, 0 changed, 12 destroyed**. The demo is no longer live.

[Cleanup screenshot](https://github.com/omprakash2499/jenkins-cicd-deployment/blob/main/docs/screenshots/12-terraform-cleanup.png)

The deployment IAM user and its access key were created separately from Terraform.
Their deletion and removal of the Jenkins credential have not yet been confirmed.
Rollback testing remains unverified.
