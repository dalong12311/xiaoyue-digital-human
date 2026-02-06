# 小月数智人项目 - GitHub上传指南

## 项目概述
小月数智人项目包含前端界面和后端API，可部署到Vercel平台。

## 上传步骤

### 1. 在GitHub上创建新仓库
1. 登录GitHub账户
2. 点击"Create repository"按钮
3. 输入仓库名称（例如：xiaoyue-digital-human）
4. 选择"Public"或"Private"
5. **不要勾选"Initialize this repository with a README"**
6. 点击"Create repository"

### 2. 上传项目文件
#### 方法一：使用Git命令行
```bash
# 在项目目录下执行
git init
git add .
git commit -m "Initial commit for Xiao Yue Digital Human project"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/xiaoyue-digital-human.git
git push -u origin main
```

#### 方法二：直接上传ZIP文件
1. 将此文件夹中的所有文件打包为ZIP
2. 在GitHub仓库页面点击"Add file" -> "Upload files"
3. 拖拽ZIP文件解压后的所有文件到上传区域
4. 点击"Commit changes"按钮

### 3. 部署到Vercel
1. 注册并登录Vercel账户
2. 点击"New Project"按钮
3. 选择"Import Git Repository"
4. 选择刚创建的GitHub仓库
5. 点击"Import"

### 4. 配置Vercel项目（如有需要）
- Framework Preset: Other
- Root Directory: （留空）
- Build Command: （留空）
- Output Directory: （留空）

## 项目结构说明
- `index.html`: 前端主界面
- `api/chat.js`: 聊天API接口
- `api/backend_connect.js`: AI核心连接
- `package.json`: 项目配置文件
- `vercel.json`: Vercel部署配置
- `README.md`: 项目说明

## 注意事项
- 确保所有文件都已上传
- 检查Vercel部署是否成功
- 记录部署后的URL以供访问

## 后续增强
- 如需数据库功能，可后续集成Supabase
- 可根据需要调整样式和功能