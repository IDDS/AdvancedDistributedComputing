# 第十七周：P2P、覆盖网络、自稳定与系统综合

## 参考来源

- `参考课件/Chapter18.pdf`：P2P 特征、Napster、结构化/非结构化 overlay、DHT、复制、flooding/random walk、Chord、CAN、Tapestry、churn。
- `参考课件/chapter17-SelfStabilization.pdf`：合法状态、closure/convergence、Dijkstra token ring、daemon、BFS、自稳定互斥和成本。
- AI 基础设施扩展：内容寻址、模型/Tokenizer 热点复制、KV Cache、GPU overlay、epoch 与自恢复。

## 页结构

1. P2P 的问题意识与设计目标。
2. 覆盖网络、索引方式和一致性哈希。
3. Chord 环、简单/可扩展查找、finger table、加入与 churn。
4. CAN 空间划分与 Tapestry 前缀路由。
5. flooding/random walk、搜索指标、Zipf 热度和复制策略。
6. self-stabilization 状态机、合法状态、closure/convergence。
7. Dijkstra token ring、central/distributed daemon、自稳定 BFS。
8. AI 基础设施中的数据、模型、KV Cache、GPU 调度和配置收敛。
9. 模型分发 overlay、故障时间线、closure 证明和期末项目。

## 课程综合

每个系统都要同时给出：逻辑状态、不变量、路由规则、复制策略、故障检测、安全边界和恢复条件。
