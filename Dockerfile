# 基于官方 Node.js 18 Alpine 镜像
FROM node:18-alpine

WORKDIR /usr/src/app

# 安装生产依赖
COPY package.json package-lock.json* ./
RUN npm install --omit=dev

# 复制应用代码
COPY app.js ./

# 暴露 3000 端口
EXPOSE 3000

# 启动应用
CMD ["node", "app.js"]

