# Foodbanks Web - Redirect Page

A simple redirect page that informs users about the migration from the development environment to the demo environment.

## Overview

When users visit `https://dev.stock.foodbanksit.be`, they will see a nicely designed page with:
- A professional layout with gradient design
- Clear information about the migration
- A prominent button linking to `https://demo.stock.foodbanksit.be`
- Responsive design for mobile and desktop

## Deployment

This project includes a Helm chart for easy deployment to Kubernetes.

### Prerequisites

- Kubernetes cluster with NGINX Ingress Controller
- cert-manager for SSL certificates (optional but recommended)
- Helm 3

### Installation

1. Clone this repository:
```bash
git clone https://github.com/foodbanks/foodbanks-web.git
cd foodbanks-web
```

2. Deploy using Helm:
```bash
helm install foodbanks-web ./helm/foodbanks-web \
  --namespace dev-stock \
  --create-namespace
```

### Configuration

You can customize the deployment by modifying the `values.yaml` file in the Helm chart:

- **Replica count**: Adjust based on traffic needs
- **Image**: Uses nginx:alpine by default
- **Ingress**: Configured for `dev.stock.foodbanksit.be`
- **Resources**: Set appropriate CPU and memory limits

## Customization

### Modifying the Page

Edit `index.html` to customize:
- Colors and styling
- Text content
- Redirect URL
- Add additional information

### Adding Custom Domains

Update `values.yaml` to add additional hostnames:

```yaml
ingress:
  hosts:
    - host: dev.stock.foodbanksit.be
      paths:
        - path: /
          pathType: Prefix
    - host: dev-old.stock.foodbanksit.be
      paths:
        - path: /
          pathType: Prefix
```

## Architecture

- **Web Server**: NGINX (alpine)
- **Content**: Served via ConfigMap
- **Ingress**: NGINX Ingress Controller with SSL
- **Certificate**: Managed by cert-manager

## Support

For questions or issues, please contact the Foodbanks IT Team at it@foodbanksit.be
