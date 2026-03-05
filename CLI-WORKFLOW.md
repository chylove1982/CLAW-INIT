# CLI 工作流（映射 claude-code-guide → OpenClaw）

> 目标：用 OpenClaw 在命令行完成“计划 → 执行 → 审查 → 交付”的闭环。

## 1. 规划阶段
- 输出任务步骤清单（Planner）
- 确认范围、风险、验收标准

## 2. 执行阶段
- 使用 OpenClaw 子智能体分工执行（sessions_spawn）
- 主会话负责决策与合并

## 3. 审查与安全
- Code Reviewer & Security Reviewer 完成审查
- 任何外部操作需确认（发布/推送/权限）

## 4. 交付
- 更新交付物文档（PRD/测试/部署/操作说明/知识库）

## 5. 建议的指令节奏（人工执行）
- 先输出计划 → 再授权执行
- 里程碑完成后再合并/推送
