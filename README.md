NexusPHP 的 Kubernetes 配置
---

安装步骤：
1. 将 nexusphp 文件夹中的 Dockerfile 编译为名为 `nexusphp` 的 Docker 镜像，将 nexusphp-mysql-init 文件夹中的 Dockerfile 编译为名为 `nexusphp-mysql-init` 的 Docker 镜像，并推送到 Kubernetes 集群中。如果你使用 minikube，则可以用 build.sh 直接完成。
2. `kubectl apply -f k8s/` 创建集群。如果你不使用 minikube，可能需要将 `pullImagePolicy` 相关项删除。
3. 通过 `kubectl get pods` 观察状态，等待 `init-nexusphp` 任务执行完成，然后删除 `k8s/init-db.yaml`. 由于未知原因，该任务总是失败，但是不影响使用。
