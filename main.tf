resource "jenkins_folder" "folders" {
  count = length(var.folders)
  name = element(var.folders, count.index)
}

resource "jenkins_job" "jobs" {
  depends_on = [jenkins_folder.folders]

  count = length(var.jobs)
  name     = lookup(element(var.jobs, count.index), "name", null)
  folder   = "/job/${lookup(element(var.jobs, count.index), "folder", null)}"

  template = templatefile("${path.module}/sb-job.xml", {
    repo_url = lookup(element(var.jobs, count.index), "repo_url", null)
    name = lookup(element(var.jobs, count.index), "name", null)
  })

#  lifecycle {
#    ignore_changes = [template]
#  }
}