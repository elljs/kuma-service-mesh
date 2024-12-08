# 使用官方 Node.js 20 的基础镜像
FROM node:20-slim

# 设置工作目录
WORKDIR /app

# 将 package.json 和 pnpm-lock.yaml 复制到工作目录
COPY package.json pnpm-lock.yaml ./

# 使用 corepack 安装 pnpm
RUN corepack enable pnpm

# 安装项目依赖
RUN pnpm install

# 复制项目文件到工作目录
COPY . .

# 暴露容器的 3000 端口
EXPOSE 3000

# 使用 pnpm start 作为容器启动命令
CMD ["pnpm", "start"]