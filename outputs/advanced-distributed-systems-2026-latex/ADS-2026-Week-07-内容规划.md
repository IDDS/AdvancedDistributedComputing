# 第 7 周《消息序与组通信》重编规划

2025 源文件：`source-2025-pdf/ADS-CH-7-消息.pdf`，共 53 页；2025 PPT 同名副本共 53 页。  
目标：约 100–115 页，保留 2025 定义、公式、算法、图例和复杂度，同时增加“动机—不变量—例子—故障语义”的解释页。

## 叙事主线

1. 先区分 arrival、receive、delivery：消息到了不代表应用已经处理；
2. 从 A-execution 出发，逐级收紧为 FIFO、causal order、RSC 和 synchronous order；
3. 解释为什么同步原语会死锁，以及 crown 如何成为可检验的环；
4. 从点到点顺序扩展到 multicast：因果序、全序和组成员关系；
5. 用 RST、KS、三阶段全序和 propagation tree 说明“控制信息如何让交付可证明”；
6. 最后讨论故障语义、RPF、Steiner tree、delay-bounded Steiner tree 与 core-based tree。

## 模块与 2025 页码映射

| 2025 页码 | 模块 | 重编重点 |
|---:|---|---|
| 1–3 | 导入与记号 | $N,L,E,\prec,T$、send/receive/delivery 区分 |
| 4 | A-execution 与 FIFO | 非 FIFO 反例、seq-num + buffer |
| 5–9 | Causal order | 定义、实现视角、MO/EI/common past/future |
| 10–11 | Synchronous execution | 原子 handshake、同步因果关系、scalar timestamp |
| 12–16 | RSC 与 crown | 同步原语下的死锁、crown、$\rightarrow$ 图与线性扩展 |
| 17–20 | 顺序层级与模拟 | $RSC\subseteq CO\subseteq FIFO\subseteq A$，异步/同步互模拟 |
| 21–23 | Binary rendezvous | Bagrodia 优先级、request/permission/ACK、防环代码 |
| 24–25 | 组通信与 RST | unicast/multicast/broadcast、开放/闭合组、RST 因果交付 |
| 26–32 | Optimal KS | propagation constraint、信息裁剪、LOG/OM、代码与例子 |
| 33–35 | Total order | 中央 sequencer、三阶段 timestamp、队列与复杂度 |
| 36–43 | Multicast propagation tree | SSSG/MSSG/SSMG/MSMG、meta-group、PM、代码与正确性 |
| 44–45 | Fault-tolerant multicast | validity/agreement/integrity/FIFO/CO/TO/timeliness |
| 46 | RPF | 约束泛洪、反向路径转发、近似 spanning tree |
| 47–52 | Steiner trees | 定义、KMB、delay-bounded CSTCD/CSTC、复杂度与例子 |
| 53 | Core-based trees | join、graft、core flood 与动态组通信 |

## 关键图形裁取

- A/FIFO 执行图、CO 四例、SYNC 执行图、crown 图和 hierarchy 图；
- Bagrodia binary rendezvous、RST/KS 信息传播、total-order 队列；
- multicast 四类关系、propagation tree 例子、CO 正确性四种情况；
- RPF、Steiner/KMB、delay-bounded Steiner 例子。

## AI 基础设施扩展

- 参数服务器/权重更新：FIFO 与 causal delivery 的选择；
- 多副本服务：total order 用于配置、模型版本和 schema 变更；
- 多租户组播：meta-group/propagation tree 映射到租户订阅集合；
- GPU collective 与 RPF/Steiner：在带宽、延迟和故障域约束下构造传播树；
- KV cache 失效通知：uniform agreement、causal order 与幂等去重。

## 课堂互动

1. 给出三条消息，判断 A/FIFO/CO/SYNC 属于哪一层；
2. 找出 crown 并解释为什么同步 send 会死锁；
3. 模拟 RST 的向量交付条件；
4. 给 4 个副本的并发更新，比较 centralized sequencer 和三阶段全序；
5. 为 GPU 组播设计 Steiner 或 delay-bounded Steiner tree。

