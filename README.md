# UnitClaw_LinkerHand_Edu

LinkerHand 仿生灵巧手独立教学 SDK、仿真、遥操作、手部视觉抓取，可单机脱离机械臂使用。

## 仓库说明

本仓库整合了 **linker-bot** 官方 GitHub 组织（https://github.com/linker-bot）全部 27 个开源仓库的源码，按功能分类归档，适配院校灵巧手教学实训场景。上游版权归 linker-bot 团队所有，本仓库遵循 Apache License 2.0 协议。

## 硬件适配

| 硬件平台 | 适配状态 |
|---------|---------|
| LinkerHand L20 | ✅ 完整支持 |
| LinkerHand L30 | ✅ 完整支持 |
| LinkerHand O20 | ✅ 完整支持 |
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
├── sdk/                          # 底层 SDK 驱动（C++/Python/ROS2 各型号）
│   ├── linkerhand-cpp-ros2/      # C++ ROS2 驱动
│   ├── linkerhand-cpp-sdk/       # C++ SDK
│   ├── linkerhand-python-sdk/    # Python SDK
│   ├── linkerhand-ros2-sdk/      # ROS2 Python SDK
│   ├── linkerhand-l30-sdk/       # L30 型号 SDK
│   ├── linkerbot-python-sdk/     # LinkerBot Python SDK
│   ├── linkerhand-o20-ros2/      # O20 ROS2 驱动
│   ├── linkerhand-l20d-ros2/     # L20D ROS2 驱动
│   └── linkerhand-ros-sdk/       # ROS1 SDK
├── sim_env/                      # 仿真环境
│   ├── linker-sim/               # Linker 通用仿真平台
│   └── linkerhand-sim/           # 灵巧手专用仿真
├── dataset_collect/              # 数据集采集工具
│   ├── umi-dex/                  # UMI 灵巧操作数据集
│   └── human-dex/                # 人类灵巧操作数据集
├── dashboard_ui/                 # 上位机可视化界面
│   └── dexterous-hand-dashboard/ # 灵巧手 Dashboard
├── can_tools/                    # CAN 总线调试工具
│   ├── can-finder/               # CAN 设备发现工具
│   ├── can-bridge/               # CAN 桥接工具
│   ├── can-finder-desktop/       # CAN 桌面版工具
│   └── linker-upgrader/          # 固件升级工具
├── grasp_demo/                   # 抓取演示案例
│   ├── dexterous-hand-rps/       # 石头剪刀布演示
│   ├── linkerhand-fixed-grasp/   # 固定抓取演示
│   └── linkerhand-unidexgrasp/   # UniDexGrasp 抓取生成
├── tele_operation/               # 遥操作远程控制
│   ├── linkerhand-tele-arm/      # 灵巧手遥操作（机械臂端）
│   └── linker-keeper/            # 遥操作守护进程
├── urdf_model/                   # URDF 三维模型描述
│   └── linkerhand-urdf/
├── third_party/                  # 第三方依赖库
│   ├── open_vins/                # VINS 视觉惯性导航
│   └── primitive/                # 基础运动原语库
├── org_config/                   # linker-bot 组织配置
│   └── .github/
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

## 上游仓库来源

| 分类 | 上游仓库 | 协议 |
|------|---------|------|
| SDK | linkerhand-cpp-ros2, linkerhand-cpp-sdk, linkerhand-python-sdk, linkerhand-ros2-sdk, linkerhand-l30-sdk, linkerbot-python-sdk, linkerhand-o20-ros2, linkerhand-l20d-ros2, linkerhand-ros-sdk | Apache-2.0 / MIT |
| 仿真 | linker-sim, linkerhand-sim | Apache-2.0 |
| 数据集 | umi-dex, human-dex | Apache-2.0 / MIT |
| 上位机 | dexterous-hand-dashboard | GPL-3.0 |
| CAN 工具 | can-finder, can-bridge, can-finder-desktop, linker-upgrader | GPL-3.0 / Apache-2.0 |
| 抓取演示 | dexterous-hand-rps, linkerhand-fixed-grasp, linkerhand-unidexgrasp | Apache-2.0 |
| 遥操作 | linkerhand-tele-arm, linker-keeper | Apache-2.0 |
| URDF | linkerhand-urdf | Apache-2.0 |
| 第三方 | open_vins, primitive | GPL-3.0 / MIT |

> **协议说明：** GPL-3.0 协议的子目录（can-finder、can-finder-desktop、dexterous-hand-dashboard、open_vins）独立保留原始 LICENSE 文件，使用时需遵守对应协议约束。

## 素材归档

教学视频、数据集、3D 模型等大文件**不纳入 Git 仓库**，统一存放在外部归档目录：
`C:\2. WWNT\0.1 素材归档\LinkerHand灵巧手配套素材`

详见 `素材归档索引.md`。

## 开源协议

本仓库底层驱动对齐上游 linker-bot 生态，采用 **Apache License 2.0** 开源协议，可自由修改、商用，仅需保留原始版权声明。

各子目录内保留上游仓库原始 LICENSE 文件，部分 GPL-3.0 协议的子模块需单独遵守对应协议。

---

© 广东省万物拟态机器人股份有限公司 | 官网：[UnitClaw.cn](https://UnitClaw.cn)
