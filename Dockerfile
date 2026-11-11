FROM gotenberg/gotenberg:9.4.0-libreoffice@sha256:4f8700501877b7198e1e393061add6ead52f4b0b2f1e4972a404be95b751d9e9

CMD ["gotenberg", "--api-disable-health-check-route-telemetry", "--libreoffice-auto-start", "--webhook-disable"]
