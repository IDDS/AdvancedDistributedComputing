# 第八讲：容器编排与微服务（2025 内容完整重编版）

## 讲授主线

学生先看到单机容器解决了“环境一致性”，再看到集群规模带来的故障、调度、网络、存储和升级问题，最后通过 Kubernetes 的声明式控制环理解：用户只描述期望状态，控制器持续把实际状态拉回期望状态。

## 2025 课件覆盖映射

| 2025 页码 | 本版内容 |
|---|---|
| 1--4, 12--17 | Google 系统背景、数据中心、常态故障、Kubernetes 总览、控制面/节点 |
| 5--11 | 容器运行时、Dockerfile、镜像构建、推送、拉取 |
| 18--25 | 集群建立/使用、Cloud OS、可移植性、避免厂商锁定 |
| 26--32 | Docker 网络、NAT/端口映射、Kubernetes Pod 网络 |
| 33--43 | Pod、Volume、Labels、Selectors |
| 44--46 | ReplicaSet 与声明式控制环 |
| 47--65 | Service、iptables/kube-proxy、Service 类型、对外暴露 |
| 66--77 | Rolling Update、Deployment、版本迁移 |
| 78--83 | DaemonSet、Job、PersistentVolume 抽象 |
| 84--97 | PV/PVC 生命周期与绑定流程 |
| 98--105 | StatefulSet、ConfigMap、Secret、HPA |
| 106--122 | 多可用区、Namespace、资源隔离、Request/Limit、Quota、Cluster Autoscaler、可扩展性、声明式编程 |
| 123--126 | Kubernetes 社区、案例、延伸阅读、讨论题 |

## AI 基础设施扩展

将 Pod/ReplicaSet/Service/Volume/调度/隔离映射到 GPU 训练、推理服务、模型缓存、Checkpoint、Gang Scheduling、拓扑感知和多租户配额，形成“容器编排是 AI 集群操作系统”的解释闭环。

## 课堂互动

1. Dockerfile 故障定位：为什么镜像在本机可运行、集群却 CrashLoopBackOff？
2. 期望状态追踪：给定副本数、节点故障和控制器动作，预测最终 Pod 集合。
3. Service 路由：从客户端 IP/端口推导到后端 Pod 的转发链路。
4. 滚动升级：在 maxUnavailable/maxSurge 约束下安排版本迁移。
5. PVC 绑定：学生扮演管理员、用户、绑定控制器，完成 PV/PVC/Pod 生命周期。
6. AI 集群设计：为训练、推理、缓存和监控分别选择工作负载类型、存储和隔离策略。
