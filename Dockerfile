FROM gotenberg/gotenberg:8.39.0-libreoffice@sha256:4c0eb92ef22e5d5fb0a49eac924b63d85d0b0334ea3365a1f5ca428f367b3054

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
