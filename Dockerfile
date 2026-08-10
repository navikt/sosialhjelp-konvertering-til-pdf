FROM gotenberg/gotenberg:8.35-libreoffice

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
