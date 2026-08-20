FROM gotenberg/gotenberg:8.36.0-libreoffice@sha256:88f9cc4a8b9468443220a0b945174c794880c1b6d3d583efba6e2319e509ac92

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
