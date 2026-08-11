FROM gotenberg/gotenberg:8.35.0-libreoffice@sha256:956e0bdd7cedbe39fcdc9bc928e613db2c717b0b25d2d7e7d43c51b0f4a30068

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
