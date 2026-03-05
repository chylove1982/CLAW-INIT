# CLAW-INIT（OpenClaw 中文开发套件）

面向 OpenClaw 的中文化开发套件，参考 `claude-init` 的结构与思路，提供一键初始化、模板化配置、文档体系与最佳实践清单。目标是让中国开发者快速获得一致的 OpenClaw 工作流与工程规范。

## 核心目标
- **中文化**：配置、文档、提示模板全部中文
- **模板化**：常用目录与文件一次性落地
- **可扩展**：预留 skills、hooks、rules 与文档分层
- **安全与质量**：内置安全/质量清单与流程约束

## 快速开始

### 一键安装（本地脚本）
```bash
bash install.sh
```

### 手动安装
```bash
bash setup.sh
```

> 提示：脚本会把模板复制到当前目录，不会覆盖已存在文件。

## 目录结构
```
CLAW-INIT/
├── install.sh              # 远程安装入口（可选）
├── setup.sh                # 本地初始化脚本
├── templates/
│   ├── .openclaw/           # OpenClaw 工作区模板
│   └── docs/                # 文档体系模板
├── ANALYSIS.md             # 对 claude-init 的深度分析
└── OPENCLAW_PLAN.md        # OpenClaw 版本方案设计
```

## 版本规划
- v0.1：模板与文档框架落地
- v0.2：扩展 hooks/skills/rules 示例
- v0.3：脚本完善与可选组件交互

## 许可
MIT
