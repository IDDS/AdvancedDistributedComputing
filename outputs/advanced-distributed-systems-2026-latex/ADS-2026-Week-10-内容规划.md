# 第十讲：分布式互斥算法

## 逻辑主线

先定义临界区、安全性、活性、公平性和性能指标，再比较 token、非 token、quorum 三条路线；随后用 Lamport 和 Ricart--Agrawala 建立全序/许可思想，用 Maekawa 说明 quorum 交集与死锁，用 Suzuki--Kasami 和 Raymond 说明 token 的广播与树路径优化，最后迁移到数据库、GPU 和模型发布。

## 参考课件覆盖

覆盖 `参考课件/Chapter9.pdf` 的 Lamport、Ricart--Agrawala、Singhal 自适应信息结构的动机、Maekawa quorum、FAILED/INQUIRE/YIELD、Suzuki--Kasami、Raymond 树算法及性能讨论。
