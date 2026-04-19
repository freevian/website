# Stage 1: Build
FROM node:20-slim AS builder

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies 
# Skip postinstall because project.inlang isn't here yet
RUN npm install --ignore-scripts

# Copy source code
COPY . .

# Run paraglide compile manually after files are here
RUN npx paraglide-js compile --project ./project.inlang --outdir ./src/lib/paraglide

# Build the project
RUN npm run build

# Stage 2: Serve
FROM nginx:alpine

# Copy build artifacts to nginx
COPY --from=builder /app/build /usr/share/nginx/html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
