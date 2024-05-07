resource "jenkins_folder" "folders" {
  count = length(var.jobs)
  name = lookup(element(var.jobs, count.index), "folder", null)
}

resource "jenkins_job" "jobs" {
  depends_on = [jenkins_folder.folders]
  count = length(var.jobs)
  name     = lookup(element(var.jobs, count.index), "name", null)
  folder   = lookup(element(var.jobs, count.index), "folder", null)
  template = templatefile("${path.module}/sb-job.xml", {
    repo_url = lookup(element(var.jobs, count.index), "repo_url", null)
  })
}