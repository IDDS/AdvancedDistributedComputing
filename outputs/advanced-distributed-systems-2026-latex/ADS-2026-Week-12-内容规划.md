# 第十二讲：检查点、回滚与恢复

## 逻辑主线

从局部检查点和一致全局检查点开始，先用 orphan/lost/delayed/duplicate 消息建立恢复直觉，再解释非协调检查点的 Domino Effect，随后比较协调、通信诱导和日志型恢复，最后把恢复线映射到分布式训练 Checkpoint 和 Kubernetes Job。

## 参考课件覆盖

覆盖 `参考课件/chapter13-Checkpointing.pdf` 的一致状态、消息类型、非协调/协调/通信诱导检查点、日志恢复、no-orphans、悲观/乐观/因果日志和 Koo--Toueg 两阶段协调思想。
