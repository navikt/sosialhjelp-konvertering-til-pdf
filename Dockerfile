FROM gotenberg/gotenberg:8.35.0-libreoffice

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
