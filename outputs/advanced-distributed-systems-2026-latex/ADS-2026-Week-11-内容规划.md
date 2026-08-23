# 第十一讲：分布式死锁与全局谓词

## 逻辑主线

先把“等待资源”建模为 Wait-For Graph，再区分 single-resource、AND、OR、AND-OR 模型；然后解释 WFG 过时、幻影死锁、版本号和 Probe；最后引入稳定谓词、两阶段观察、Possibly/Definitely，并把这些概念映射到 GPU、RDMA、Checkpoint 和控制器依赖。

## 参考课件覆盖

综合 `参考课件/Chapter10.pdf` 与 `参考课件/Chapter11.pdf`：WFG、死锁预防/避免/检测/恢复、正确性要求、请求模型、稳定性质、两阶段观察、状态格、Possibly/Definitely。
