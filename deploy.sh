#!/bin/bash

# 小月数智人项目部署脚本

echo "小月数智人项目部署脚本"
echo "========================"

# 检查是否已安装Git
if ! command -v git &> /dev/null; then
    echo "错误: Git未安装"
    exit 1
fi

# 检查是否已安装Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "警告: Vercel CLI未安装，正在尝试安装..."
    npm install -g vercel
fi

echo "请确保您已在GitHub上创建了仓库并获得了克隆URL"
echo "请确保您已在Vercel上注册并登录"

read -p "请输入GitHub仓库URL: " GITHUB_URL
read -p "请输入项目名称: " PROJECT_NAME

echo "正在克隆仓库..."
git clone $GITHUB_URL $PROJECT_NAME
cd $PROJECT_NAME

echo "正在添加项目文件..."
cp ../index.html ./
cp -r ../api ./api

echo "正在添加配置文件..."
cp ../package.json ./
cp ../vercel.json ./

echo "正在提交更改..."
git add .
git commit -m "Add Xiao Yue Digital Human project files"
git push origin main

echo "项目文件已提交到GitHub，现在部署到Vercel..."
vercel --prod

echo "部署完成！"