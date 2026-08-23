# 第 5 周《术语和基本算法》重编规划

2025 源文件：`2025课件/ADS-CH-5-算法.pdf`，共 82 页。拟使用与前四周相同的 LaTeX Beamer 主题，扩展为约 105–120 页，代码页拆成“语义—伪代码—复杂度—例题”四类页面。

| 2025 页码范围 | 内容模块 | 计划重编重点 |
|---:|---|---|
| 1–2 | 课程标题、来源与致谢 | 统一封面与来源页 |
| 3–4 | 拓扑抽象与 overlay | 无向/加权图、LAN/WAN、overlay 映射 |
| 5–13 | 分类与基本概念 | 应用/控制执行、匿名/非匿名、确定/非确定、冻结、同步/异步、wait-free、故障模型 |
| 14–15 | 复杂度度量 | 消息、时间、空间、位复杂度与 $\Omega/O/\Theta$ |
| 16–19 | 同步单发起者生成树 | flooding、局部变量、示例、直径轮次复杂度 |
| 20–23 | 异步单发起者生成树 | QUERY/ACCEPT/REJECT、终止、示例与消息复杂度 |
| 24–28 | 并发发起与异步 DFS 生成树 | 根竞争、newroot、DFS 顺序与代码 |
| 29–30 | 树上的 broadcast/convergecast | 下行广播、上行聚合、应用映射 |
| 31–35 | 单源最短路径 | 同步/异步 Bellman–Ford、距离向量路由、负权约束 |
| 36–43 | 全源最短路径 | Floyd–Warshall、pivot、不变式、分布式行存储、sink tree |
| 44–46 | 约束泛洪 | FIFO、序号去重、无生成树的同步/异步实现 |
| 47–54 | GHS 最小生成树 | fragment、level、MWOE、消息类型、同步/异步复杂度 |
| 55–63 | Synchronizer | 语义、$M_a=M_s+(M_{init}+rM_{round})$、simple/cluster synchronizer |
| 64–67 | 最大独立集 MIS | 定义、Luby 随机算法、异步代码与例题 |
| 68 | Connected Dominating Set | 支配集、CDS 与网络骨干 |
| 69–71 | Compact Routing | interval routing、stretch factor、路由表压缩 |
| 72–74 | Leader Election | 环上 LCR、Hirschberg–Sinclair、消息复杂度 |
| 75–81 | 自适应数据副本 | 用户/副本模型、树 overlay、fringe、epoch 测试、收敛与代码 |
| 82 | 结束页 | 统一收束与课堂练习 |

## AI 基础设施扩展

- 生成树：Kubernetes 控制器树、Ray actor 拓扑、训练集群广播/聚合。
- Bellman–Ford/Floyd–Warshall：GPU/节点网络代价、服务路由和多租户网络。
- GHS/MIS/CDS：机架网络骨干、故障域选择、数据中心覆盖节点。
- Synchronizer：在异步 runtime 上模拟 barrier/round，连接 collective 通信。
- 自适应副本：模型权重、embedding、KV cache 的热度驱动副本迁移。

## 预计课堂互动

1. 给定网络图，手算同步/异步 spanning tree 的消息与终止。
2. 用 Bellman–Ford 日志定位 count-to-infinity 或 stale distance。
3. 选择 GHS 的 MWOE 并解释 fragment 合并是否合法。
4. 模拟 Luby MIS 的一轮随机优先级。
5. 为 GPU 权重或 KV cache 设计自适应副本 epoch。
