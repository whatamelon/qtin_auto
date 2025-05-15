# ✅ 공식 n8n Docker 이미지 사용
FROM n8nio/n8n:latest

# ✅ 포트 지정 (Railway는 이 포트를 통해 외부에서 접근함)
ENV N8N_PORT=5678

# ✅ 웹훅 주소 (Railway 배포 주소에 맞게 바꿔주세요)
ENV WEBHOOK_TUNNEL_URL=https://chic-creativity.up.railway.app

# ✅ 기본 인증 설정 (선택: 필요시 꺼도 됨)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=supersecure

# ✅ 설정파일 퍼미션 이슈 방지
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# ✅ 암호화 키 (워크플로에 비밀 값 저장 시 필수)
ENV N8N_ENCRYPTION_KEY=this-is-a-very-secret-key

# ✅ 포트 노출
EXPOSE 5678

# ✅ n8n 실행
CMD ["n8n"]