markdown
```

azure-idp-blueprint/
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── versions.tf
├── backend.tf

├── environments/
│   └── dev.tfvars

├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── aks/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── acr/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── keyvault/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── argocd/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf

└── README.md
