```mermaid
flowchart TD
  User[Admin / Staff] -->|Browser Access| Nginx[Reverse Proxy]
  Nginx -->|Port 5678| n8n[n8n Server]
  n8n --> Postgres[(PostgreSQL DB)]
  n8n -->|Email / API Calls| Integrations[3rd-party APIs]
  n8n -->|Local Files / Logs| Storage[SSD / Backup Storage]
  Monitor[Uptime Kuma] --> n8n
  Backup[Backup Cron Jobs] --> Postgres
  Backup --> Storage
