# UnitClaw_LinkerHand_Edu

LinkerHand 仿生灵巧手独立教学 SDK

## 硬件适配

| 硬件平台 | 适配状态 |
|---------|---------|
| 对应 UnitClaw 硬件 | ✅ 完整支持 |

## 环境部署

```bash
# Ubuntu 一键部署
chmod +x install_env.sh
./install_env.sh

# 手动安装 Python 依赖
pip install -r requirements.txt
```

## 目录结构

```text
UnitClaw_LinkerHand_Edu/
├── 01_单机底层SDK驱动实训/
├── 02_CAN总线调试与固件升级/
├── 03_灵巧手独立Isaac仿真/
├── 04_独立可视化上位机Dashboard/
├── 05_手部多模态数据集采集与模仿学习/
├── 06_动捕手套_VR独立遥操作/
├── 07_桌面独立视觉抓取VLA/
├── 08_纯手部独立课堂基础实训案例包/
├── 09_整机协同拓展选修/
├── scripts/
├── .gitignore
├── install_env.sh
├── requirements.txt
├── 素材归档索引.md
└── README.md
```

## 素材归档

教学视频、数据集、3D 模型等大文件**不纳入 Git 仓库**，统一存放在外部归档目录：
`C:\2. WWNT\0.1 素材归档\LinkerHand灵巧手配套素材`

详见 `素材归档索引.md`。

## 开源协议

本仓库底层驱动对齐上游 linker-bot 生态，采用 **Apache License 2.0** 开源协议，可自由修改、商用，仅需保留原始版权声明。

---

© 广东省万物拟态机器人股份有限公司 | 官网：[UnitClaw.cn](https://UnitClaw.cn)
