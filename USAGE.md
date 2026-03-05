# CLAW-INIT 使用说明

## 1. 初始化项目
在目标项目目录运行：
```bash
bash setup.sh
```

会自动复制 templates 中的工作区模板与文档模板，已存在的文件不会覆盖。

## 2. 推荐工作流
1) 补全 .openclaw/SOUL.md 与 USER.md
2) 在 docs/ai-context 中写清项目结构与规范
3) 按需启用子智能体完成规划/架构/审查/安全

## 3. 智能体集群建议
参考：CLAW-AGENT-CLUSTER.md

典型使用：
- 需求评估 → Planner
- 架构决策 → Architect
- 改动完成 → Code Reviewer + Security Reviewer
- 文档同步 → Doc Updater

## 4. 安全与质量原则
- 不自动执行外部敏感操作
- 任何发布/推送/权限变更必须人工确认
- 所有密钥只存环境变量/私密配置
