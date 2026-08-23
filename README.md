# 高级分布式系统（2026）

本仓库提供研究生课程《高级分布式系统》的 2026 年中文 PDF 课件。课程以分布式系统的抽象模型为起点，贯通因果关系、全局状态、消息通信、容错恢复、一致性、安全、P2P 以及云原生和大模型基础设施。

课程强调三条主线：

1. **建模**：明确进程、事件、消息、时间、故障和全局状态；
2. **推导与证明**：从算法过程出发，分析不变量、正确性、终止性、复杂度和失败路径；
3. **工程落地**：把经典协议映射到 Kubernetes、复制存储、分布式共享内存和大模型推理服务。

## 课件目录

| 周次 | 主题 | 课件 |
|---|---|---|
| 01 | 导论：分布式系统模型与问题空间 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-01-概述.pdf) |
| 02 | 进程、事件、全局状态与一致 cut | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-02-模型.pdf) |
| 03 | Lamport 时钟、向量时钟、矩阵时钟与 NTP | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-03-逻辑时钟.pdf) |
| 04 | Chandy–Lamport 快照、稳定谓词与全局状态 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-04-快照.pdf) |
| 05 | BFS/DFS、最短路、生成树、GHS 等分布式图算法 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-05-算法.pdf) |
| 06 | 算法实验、复杂度、同步器、MIS/CDS 与网络结构 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-06-算法实验与复杂度.pdf) |
| 07 | FIFO、因果序、全序、可靠组播与视图变更 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-07-消息.pdf) |
| 08 | Kubernetes 控制面、数据面、调度与故障处理 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-08-K8S.pdf) |
| 09 | 终止检测、Dijkstra–Scholten 与 Safra 思路 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-09-终止检测.pdf) |
| 10 | 分布式互斥、Ricart–Agrawala、Maekawa、Suzuki–Kasami | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-10-分布式互斥.pdf) |
| 11 | 死锁检测、等待图与稳定全局谓词 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-11-死锁与全局谓词.pdf) |
| 12 | 检查点、日志、回滚恢复、反消息与 Time Warp | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-12-检查点与回滚.pdf) |
| 13 | 完美/最终故障检测器、可疑度与故障模型 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-13-故障检测器.pdf) |
| 14 | Raft、Paxos、复制日志、一致性与 CAP 权衡 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-14-共识与一致性.pdf) |
| 15 | 分布式共享内存、顺序一致性、因果一致性与线性一致性 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-15-分布式共享内存.pdf) |
| 16 | Kerberos、mTLS、身份认证、RBAC 与访问控制 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-16-认证与安全.pdf) |
| 17 | P2P、Chord/CAN/DHT、自稳定系统与课程综合 | [PDF](outputs/advanced-distributed-systems-2026-latex/ADS-2026-Week-17-P2P与系统综合.pdf) |

## 贯穿式案例：大模型推理基础设施

课程将经典分布式系统概念映射到大模型服务：

- **PD 分离**：Prefill 负责提示词处理，Decode 负责逐 token 生成；
- **KV Cache 局部性**：调度器根据缓存位置、复制状态和 GPU 资源进行任务分配；
- **一致性与恢复**：通过复制、检查点、日志和故障检测保证跨节点状态可见，并支持失败后的回滚恢复；
- **云原生编排**：使用 Kubernetes 控制面管理 Pod、Service、GPU 调度、滚动升级和故障迁移；
- **可观测性**：围绕延迟、吞吐、缓存命中率、队列长度和节点健康度建立监控指标。

## 学习建议

建议按以下顺序阅读每一章：

> 先明确系统模型，再写出算法过程；先找不变量，再讨论正确性；先定义失败路径，再分析恢复；最后联系真实系统实现。

每周课件适合配合以下课堂活动：

- 根据消息序和时间线手工推演协议；
- 对故障、延迟、丢包和重复消息进行故障注入；
- 比较不同算法的消息复杂度、时间复杂度和空间开销；
- 用 Kubernetes 或推理服务案例解释理论性质如何转化为工程约束。

## 仓库结构

```text
.
└── outputs/
    └── advanced-distributed-systems-2026-latex/
        ├── ADS-2026-Week-01-概述.pdf
        ├── ADS-2026-Week-02-模型.pdf
        ├── ...
        └── ADS-2026-Week-17-P2P与系统综合.pdf
```

当前 GitHub 版本按“只发布最新 PDF 课件”的要求组织，不包含 LaTeX 源文件、2025 年原始课件、图片素材或中间生成文件。

## 参考方向

课程内容综合分布式系统经典教材、2025 年课程材料以及云原生和 AI 基础设施中的实际问题，重点覆盖：

- Lamport、向量时钟、矩阵时钟与全局状态；
- 快照、终止检测、死锁检测、互斥和选举；
- 消息序、可靠组播、同步器和图算法；
- 检查点、回滚恢复、反消息、故障检测器；
- Raft、Paxos、复制、一致性与 CAP；
- Kubernetes、DSM、安全认证、P2P 和大模型 PD 分离架构。

课程仓库：<https://github.com/IDDS/AdvancedDistributedComputing>

