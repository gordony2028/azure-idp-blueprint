```mermaid
flowchart TD
    %% Frontend
    subgraph Frontend
        UI1[Inventory Dashboard]
        UI2[Sales Entry Form]
        UI3[Consignment Manager]
        UI4[User Management]
    end
    
    %% Backend API (optional)
    subgraph Backend
        API[Custom API - FastAPI or Node.js]
    end
    
    %% Automation Engine
    subgraph n8n
        W1[Trigger: New Sale]
        W2[Update Inventory]
        W3[Record Sale]
        W4[Send Notification]
        W5[Generate Invoice]
        W6[Trigger: Low Stock Alert]
    end
    
    %% Database
    subgraph Database
        DB1[Products]
        DB2[Inventory]
        DB3[Sales]
        DB4[Consignments]
        DB5[Users]
        DB6[Audit Logs]
    end
    
    %% Reporting
    subgraph Reporting
        R1[Metabase or Power BI]
        R2[Weekly Summary Emails]
    end
    
    %% Integrations
    subgraph Integrations
        I1[Email Service]
        I2[Slack or Telegram]
        I3[Google Sheets]
    end
    
    %% Data Flows
    UI1 --> API
    UI2 --> API
    UI3 --> API
    UI4 --> API
    
    API --> W1
    
    W1 --> W2
    W1 --> W3
    W1 --> W4
    W1 --> W5
    
    W6 --> I2
    
    W2 --> DB2
    W3 --> DB3
    W4 --> I1
    W4 --> I2
    W5 --> I1
    
    DB1 --> R1
    DB2 --> R1
    DB3 --> R1
    DB3 --> R2
