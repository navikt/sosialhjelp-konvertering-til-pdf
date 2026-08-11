FROM gotenberg/gotenberg:8.34.0

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
