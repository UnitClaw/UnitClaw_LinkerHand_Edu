@echo off
chcp 65001 >nul
cd /d C:\2.WWNT\0.0UnitClaw\UnitClaw_LinkerHand_Edu
setlocal enabledelayedexpansion

echo ==============================================
echo          UnitClaw 开源版权自动更新脚本
echo          Copyright (c) 2026 WWNT Robot
echo ==============================================
echo.

:: ====================== 1. 生成根目录 LICENSE 文件 ======================
echo [1/6] 生成 LICENSE MIT协议文件
(
echo MIT License
echo.
echo Copyright (c) 2026 WWNT Robot
echo.
echo Permission is hereby granted, free of charge, to any person obtaining a copy
echo of this software and associated documentation files (the "Software"), to deal
echo in the Software without restriction, including without limitation the rights
echo to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
echo copies of the Software, and to permit persons to whom the Software is
echo furnished to do so, subject to the following conditions:
echo.
echo The above copyright notice and this permission notice shall be included in all
echo copies or substantial portions of the Software.
echo.
echo THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
echo IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
echo FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
echo AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
echo LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
echo OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
echo SOFTWARE.
) > LICENSE
echo ✅ LICENSE 文件已生成
echo.

:: ====================== 2. 生成 OPENSOURCE_NOTE.md 开源说明 ======================
echo [2/6] 生成 OPENSOURCE_NOTE.md 合规说明文档
(
echo # UnitClaw_LinkerHand_Edu 开源合规说明文档
echo ## 1. 项目基础信息
echo 项目仓库：UnitClaw_LinkerHand_Edu
echo 版权持有方：WWNT Robot
echo 版权年份：2026
echo 开源协议：MIT License
echo 项目定位：面向高校产教融合的六轴机械臂+灵巧手教学实训开源工程，基于 linker-bot 开源SDK、固件、仿真、文档二次封装教学实训案例，仅限教学、科研、非商用实训场景使用。
echo.
echo ## 2. 上游依赖开源组件清单
echo ^| 上游开源仓库 ^| 原始协议 ^| 功能用途 ^| 本项目存放目录 ^|
echo ^| ---- ^| ---- ^| ---- ^| ---- ^|
echo ^| linkerbot-docs ^| MIT License ^| 机械臂全套教学文档站源码 ^| docs_RobotArm_Docs ^|
echo ^| linkerbot-python-sdk ^| MIT License ^| 灵巧手跨平台Python控制SDK ^| 01_Base_SDK_Driver ^|
echo ^| linkerhand-ros-sdk ^| MIT License ^| ROS1底层驱动、CAN通讯协议库 ^| 01_Base_SDK_Driver ^|
echo ^| linkerhand-ros2-sdk ^| MIT License ^| ROS2 / Isaac Sim仿真驱动 ^| 03_Hand_Simulation ^|
echo ^| a7-arm-ros-sdk ^| MIT License ^| 六轴机械臂运动学、手眼标定工具 ^| 07_Visual_Grasp_VLA ^|
echo ^| linkerhand-sim-pybullet ^| MIT License ^| PyBullet抓取仿真环境 ^| 03_Hand_Simulation ^|
echo ^| Linkerhand-Open-World-Dataset ^| CC BY 4.0 ^| 6D视觉抓取开源数据集 ^| 05_Dataset_Imitation_Learn ^|
echo ^| linkerhand-hardware-firmware ^| MIT License ^| 灵巧手电机底层固件源码 ^| 02_CAN_Firmware_Debug ^|
echo ^| teleoperation-glove-sdk ^| MIT License ^| VR动捕手套遥操作SDK ^| 06_VR_Teleoperation ^|
echo ^| openarm-six-arm-demo ^| MIT License ^| 可视化上位机完整Demo工程 ^| 04_Dashboard_GUI ^|
echo.
echo ### 上游协议约束
echo 1. MIT组件：可自由复制、修改、分发；二次分发必须保留原厂源码内原始版权注释；商用场景需单独向 linker-bot 官方申请商用授权。
echo 2. CC BY 4.0数据集：允许商用二次标注；论文、教材、公开成果发表时必须标注数据集来源。
echo.
echo ## 3. 自有代码版权边界
echo 1. **归属WWNT Robot的内容**
echo 所有自主编写实训案例、教学封装脚本、课程README说明、实训流程代码、教学配套UI封装层，版权 `Copyright (c) 2026 WWNT Robot`，遵循本仓库MIT协议。
echo 2. **归属原厂商的内容**
echo linker-bot原厂SDK、固件、文档、数据集底层源码版权归原作者所有，本项目仅做教学集成，不可抹除、篡改原厂版权注释。
echo.
echo ## 4. 使用约束规范
echo ### 允许免费使用（无需授权）
echo 高校课堂教学、实验室实训、学生毕业设计、学术科研、个人非商用算法学习。
echo ### 需要单独商业授权
echo 基于本项目代码封装售卖教学软硬件产品、工业产线商用落地。
echo ### 禁止行为
echo 1. 删除、涂改上游源码原始版权与协议注释；
echo 2. 抹去LinkerHand开源来源，谎称底层SDK完全自研；
echo 3. 删除本仓库WWNT Robot版权声明后二次分发整套教学包；
echo 4. 文档、代码内新增或保留第三方中文品牌词「灵心巧手」。
echo.
echo ## 5. 学术引用格式
echo 公开发表论文、教材、公开课请统一引用：
echo ```
echo Project: UnitClaw_LinkerHand_Edu
echo Copyright: Copyright (c) 2026 WWNT Robot
echo Github: https://github.com/UnitClaw/UnitClaw/UnitClaw_LinkerHand_Edu
echo Base open source component source: https://github.com/linker-bot
echo License: MIT
echo ```
echo.
echo ## 6. 代码贡献规则
echo 1. 欢迎提交PR修复bug、拓展教学案例、适配新版SDK；
echo 2. 新增上游依赖时，必须同步更新本文件依赖清单；
echo 3. 所有贡献代码自动遵循本仓库MIT协议，WWNT Robot持有项目整体版权，贡献者保留署名权。
echo.
echo ## 7. 品牌文字管控
echo 本项目全部自有文档、脚本已完成全文检索，无「灵心巧手」中文品牌文字；全程仅使用英文 `LinkerHand` 指代上游硬件，对外项目名称统一为UnitClaw教学实训项目。
) > OPENSOURCE_NOTE.md
echo ✅ OPENSOURCE_NOTE.md 已生成
echo.

:: ====================== 3. 批量给所有 0* 目录 README_CN.md 追加版权尾部 ======================
echo [3/6] 批量追加版权段至各实训目录 README_CN.md
set "copyrightFooter=## 开源版权说明^
Copyright (c) 2026 WWNT Robot^
本教学案例代码遵循MIT开源协议，底层驱动、固件、仿真SDK来自开源仓库 linker-bot，使用需遵守上游原始开源协议。^
本项目全部文档与代码不含第三方中文品牌标识「灵心巧手」。"
for /d %%d in (01_*,02_*,03_*,04_*,05_*,06_*,07_*,08_*,09_*) do (
    if exist "%%d\README_CN.md" (
        echo. >> "%%d\README_CN.md"
        echo !copyrightFooter! >> "%%d\README_CN.md"
        echo 📝 已更新 %%d/README_CN.md
    ) else (
        echo ⚠️  %%d 未找到 README_CN.md，跳过
    )
)
echo.

:: ====================== 4. 更新文档站 docs_RobotArm_Docs ======================
echo [4/6] 处理文档站 docs_RobotArm_Docs
if exist "docs_RobotArm_Docs" (
    :: 更新mkdocs.yml页脚版权
    if exist "docs_RobotArm_Docs\mkdocs.yml" (
        echo copyright: "Copyright (c) 2026 WWNT Robot | MIT Open Source License" >> docs_RobotArm_Docs\mkdocs.yml
        echo 📚 已写入mkdocs.yml页脚版权
    )
    :: 首页index.md追加开源声明
    if exist "docs_RobotArm_Docs\index.md" (
        echo. >> docs_RobotArm_Docs\index.md
        echo --- >> docs_RobotArm_Docs\index.md
        echo ## 开源说明 >> docs_RobotArm_Docs\index.md
        echo 本整套教学文档二次整理版权 © 2026 WWNT Robot，底层文档源码开源仓库：linkerbot-docs，遵循MIT协议。 >> docs_RobotArm_Docs\index.md
        echo 本项目所有内容不含第三方中文品牌「灵心巧手」相关文字。 >> docs_RobotArm_Docs\index.md
        echo 📚 已更新文档首页开源声明
    )
) else (
    echo ⚠️ 未检测到 docs_RobotArm_Docs 文件夹，跳过文档站更新
)
echo.

:: ====================== 5. 批量给自主py文件头部添加版权注释 ======================
echo [5/6] 扫描并添加Python脚本头部版权
set "pyHeader=# Copyright (c) 2026 WWNT Robot^
# MIT License^
# Teaching demo code for UnitClaw_LinkerHand_Edu^
# Third-party underlying SDK source: https://github.com/linker-bot^
# No Chinese brand word "灵心巧手" included in this project^
"
for /r %%f in (*.py) do (
    set "filePath=%%f"
    :: 过滤第三方源码目录，不修改原厂SDK
    if not "!filePath:docs_RobotArm_Docs=!"=="!filePath!" goto skipPy
    if not "!filePath:firmware=!"=="!filePath!" goto skipPy
    if not "!filePath:dataset=!"=="!filePath!" goto skipPy
    findstr /m "Copyright (c) 2026 WWNT Robot" "%%f" >nul 2>&1
    if errorlevel 1 (
        echo !pyHeader! > tmp_py.tmp
        type "%%f" >> tmp_py.tmp
        copy /y tmp_py.tmp "%%f" >nul
        del tmp_py.tmp
        echo 🐍 已添加版权头：%%~nf
    )
    :skipPy
)
echo.

:: ====================== 6. 批量YML/YAML配置文件头部版权 ======================
echo [6/6] 扫描并添加YAML配置头部版权
set "ymlHeader=# Copyright (c) 2026 WWNT Robot^
# MIT License^
# UnitClaw Education Config File^
# Base SDK source: linker-bot open source repository^
"
for /r %%f in (*.yml,*.yaml) do (
    set "filePath=%%f"
    if not "!filePath:docs_RobotArm_Docs=!"=="!filePath!" goto skipYml
    if not "!filePath:firmware=!"=="!filePath!" goto skipYml
    if not "!filePath:dataset=!"=="!filePath!" goto skipYml
    findstr /m "Copyright (c) 2026 WWNT Robot" "%%f" >nul 2>&1
    if errorlevel 1 (
        echo !ymlHeader! > tmp_yml.tmp
        type "%%f" >> tmp_yml.tmp
        copy /y tmp_yml.tmp "%%f" >nul
        del tmp_yml.tmp
        echo ⚙️ 已添加版权头：%%~nf
    )
    :skipYml
)
echo.

echo ==============================================
echo ✅ 全部版权更新任务执行完成！
echo.
echo 后续Git推送操作命令：
echo git status
echo git add .
echo git commit -m "完成开源合规文件编写，统一更新全项目版权声明，版权主体改为WWNT Robot"
echo git push origin main
echo ==============================================
pause
endlocal