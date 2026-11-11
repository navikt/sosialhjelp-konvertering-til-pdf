FROM gotenberg/gotenberg:9.2.0-libreoffice@sha256:222703e41a67ecf5b1760d4c438a8c55de2afc6dd10406e39de114c2e53a9886

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
