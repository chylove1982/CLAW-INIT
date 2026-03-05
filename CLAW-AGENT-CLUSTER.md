# OpenClaw 智能体集群方案

基于 claude-code-guide 的思维框架，面向 OpenClaw 设计的“多智能体协同”结构，用于拆解复杂开发任务、控制风险、提升产出一致性。

## 1. 设计原则
- 角色清晰：每个智能体有明确职责与边界
- 质量优先：先规则与安全，再产出功能
- 低耦合：文档/规则/模板与执行分离
- 可演进：按需求增删，避免一次性膨胀

## 2. 集群结构（建议）

### 核心角色
1) Planner（需求拆解）
- 输入：需求/问题
- 输出：步骤、范围、依赖与风险

2) Architect（架构设计）
- 输入：需求与约束
- 输出：模块/数据/接口设计与取舍

3) Code Reviewer（代码审查）
- 输出：代码规范、安全、性能与可维护性建议

4) Security Reviewer（安全审查）
- 输出：敏感信息、权限、依赖风险

5) Build/CI Resolver（构建问题）
- 输出：构建失败原因与修复建议

6) Doc Updater（文档维护）
- 输出：规范与功能文档同步更新

7) Test Runner（测试执行）
- 输出：测试策略、覆盖率建议

### 协作路径（简化）
- 需求 → Planner → Architect → 执行 → Reviewer/Security → Doc/Test

## 3. 与 OpenClaw 的对应关系
- 子智能体：用 sessions_spawn (runtime=subagent/acp) 实现
- 规则与规范：放入模板 docs/ai-context 与 AGENTS.md
- 任务拆解：Planner 先行，Review/Security 作为 gating

## 4. 运行策略
- 小任务：单智能体+快速审查
- 中任务：Planner + 执行 + Reviewer
- 大任务：Planner + Architect + 执行 + Review + Security + Doc

## 5. 风险控制
- 明确允许/禁止的工具调用
- 外部操作必须确认（发邮件、改权限、推送等）
- 对敏感信息做最小化暴露
