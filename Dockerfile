FROM gotenberg/gotenberg:8.37.0-libreoffice@sha256:c85f019d6ae4927714507254331cc0ed72da7b619ee798e3a45de01f54372c12

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
