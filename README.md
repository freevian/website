# Freevian Website

个人网站项目，基于 SvelteKit 开发并使用 Docker 部署。

## 部署 (Deployment)

使用以下指令通过 SSH 远程触发服务器上的部署脚本。该指令包含反向代理设置，以便在构建镜像时让服务器通过本地代理访问网络。

```bash
# -R 将本地 7890 转发到远程，配合服务器 Docker 代理配置使用
ssh -R 7890:127.0.0.1:7890 alicloud "export https_proxy=http://127.0.0.1:7890 && export http_proxy=http://127.0.0.1:7890 && cd /root/freevian-website && bash deploy.sh"
```

### 部署脚本说明 (`deploy.sh`)

1. **拉取代码**：从 `origin main` 获取最新代码。
2. **构建镜像**：构建名为 `freevian-website` 的 Docker 镜像。
3. **运行容器**：停止旧容器并启动新容器，映射端口 433。
4. **清理**：删除虚悬 (dangling) 镜像。

## 开发

```bash
npm install
npm run dev
```
