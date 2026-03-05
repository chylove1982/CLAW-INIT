# CLAW 配置建议（B2B 平台）

## 1. 工作区模板
- .openclaw/
  - AGENTS/SOUL/USER/TOOLS/HEARTBEAT/MEMORY
- docs/ai-context/
  - project-structure.md
  - coding-standards.md
  - docs-overview.md

## 2. 推荐约束
- 外部操作必须确认（发布/权限/消息推送）
- 禁止在仓库中保存敏感信息
- 保持 PR 审查与测试门禁

## 3. 多 Agent 编排建议
- 需求：Planner → Architect
- 开发：Engineer → Reviewer → Security
- 交付：Doc Updater + Test Runner

## 4. 输入物接入规范
- 原型：Axure 链接或导出文件放入 docs/inputs/
- PDM：导出 .pdm 或通过 MySQL schema 文档
