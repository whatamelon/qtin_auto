FROM n8nio/n8n:latest

# 포트 지정
ENV N8N_PORT=5678
ENV WEBHOOK_TUNNEL_URL=https://chic-creativity.up.railway.app

# 기본 인증 설정 (원하면 제거 가능)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=pass123

# 퍼미션 경고 방지
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

EXPOSE 5678

# 이게 없으면 실행 안됨!
CMD ["n8n"]