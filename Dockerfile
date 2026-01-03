FROM node:20-slim
WORKDIR /app
RUN npm install -g supergateway
ENV PORT=8080
ENV AIRTABLE_API_KEY=""
EXPOSE 8080
CMD ["sh", "-c", "supergateway --stdio 'npx -y airtable-mcp-server' --port $PORT"]
