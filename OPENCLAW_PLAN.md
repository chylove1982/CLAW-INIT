# OpenClaw 中文开发套件方案（CLAW-INIT）

## 1. 目标
将 claude-init 的“中文化 + 模板化 + 可扩展”思路迁移到 OpenClaw，形成可一键初始化的工作区模板与最佳实践集。

## 2. 方案范围（MVP）
- **模板文件**：AGENTS/SOUL/USER/TOOLS/HEARTBEAT/MEMORY
- **文档体系**：docs/ai-context 下的项目结构/规范模板
- **工作流建议**：编码规范、工具调用规范、质量检查清单
- **脚本化初始化**：setup.sh 一键复制模板

## 3. 目录设计（建议）
```
templates/
├── .openclaw/
│   ├── AGENTS.md
│   ├── SOUL.md
│   ├── USER.md
│   ├── TOOLS.md
│   ├── HEARTBEAT.md
│   └── MEMORY.md
└── docs/
    └── ai-context/
        ├── project-structure.md
        ├── coding-standards.md
        └── docs-overview.md
```

## 4. 初始化脚本（setup.sh）
- 检查目标目录写权限
- 拷贝模板，不覆盖已存在文件
- 输出后续指引：如何运行 OpenClaw、如何安装技能

## 5. 安全与质量策略
- 默认不启用任何“自动执行”行为
- 文档与脚本明确提醒“不要泄漏凭证”
- 提供最小化的 Hooks 示例（如日志、提醒），避免误用

## 6. 与 claude-init 的映射关系
| claude-init | CLAW-INIT | 说明 |
|---|---|---|
| CLAUDE.md | .openclaw/AGENTS.md + SOUL/USER | OpenClaw 中以工作区说明替代 |
| .claude/agents | skills/agents 指南 | 由 OpenClaw skill/agent 体系承载 |
| hooks | hooks 指南 | 仅给出模板与说明，避免自动执行 |
| MCP 配置 | OpenClaw skills / tools | 用 skills 代替 MCP 服务 | 

## 7. 后续迭代
- v0.2：补充 skills 示例（如 code-review / security-check）
- v0.3：加入“项目初始化模板库”（Node/Python/Frontend）
- v0.4：完善自动化检查与最佳实践测试用例
